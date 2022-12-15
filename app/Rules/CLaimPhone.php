<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CLaimPhone implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $output = (string)preg_replace( '/[^0-9]/', '', $value );
        if (strlen($output) == 11 && $output[0] == 7)
            return $value;
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Введите номер телефона в правильном формате.';
    }
}
