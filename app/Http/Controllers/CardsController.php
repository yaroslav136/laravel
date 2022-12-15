<?php

namespace App\Http\Controllers;

use App\Models\Appeal;
use App\Models\AppealStatus;
use App\Models\Card;
use App\Models\Category;
use App\Models\ClaimCategory;
use App\Rules\CardCVV;
use App\Rules\CardDate;
use App\Rules\CardFio;
use App\Rules\CardNumber;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CardsController extends Controller
{
    public function index() {
        $cards = Card::all()->where('userId', auth()->user()->id);
        return view('cards.index', compact('cards'));
    }

    public function create() {
        return view('cards.create');
    }

    public function store() {
        $data = request()->validate([
            'number' => 'required|unique:cards,number|max:10|min:10|string',
        ]);
        $data['userId'] = auth()->user()->id;
        $data['type'] = "Екарта";
        $card = Card::create($data);
        $cards = Card::all();
        //return redirect()->route('cards.index', compact('cards'));
        return redirect()->route('cards.show', compact('card', 'cards'));
    }

    public function show(Card $card) {
        if (auth()->user()->id != $card->userId)
            return redirect()->route('cards.index');

        $cards = Card::all();
        return view('cards.show', compact('card', 'cards'));
    }

    public function destroy(Card $card) {
        if (auth()->user()->id != $card->userId)
            return redirect()->route('cards.index');

        $card->delete();
        return redirect()->route('cards.index');
    }

    public function pay() {
        $validator = Validator::make(request()->all(), [
            "card_id" => ["required", "integer"],
            "sum" => ["required", "integer"],
            "typePay" => ["required", "string", "max:255"],
            "fio" => ["required", new CardFio, "max:255"],
            "number_card" => ["required", new CardNumber, "max:255"],
            "cvv" => ["required", new CardCVV, "max:255"],
            "date" => ["required", new CardDate, "max:255"],
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ]);
        }
        if ($validator->valid()["typePay"] == "bank-card") {
            $card = Card::all()->find($validator->valid()["card_id"]);
            $card['balance'] += $validator->valid()['sum'];
            $card->save();
            return response()->json([
                "balance" => $card['balance'],
                "errors" => $validator->errors(),
            ]);
        } else {
            abort(502, "Неверный запрос");
        }
    }
}
