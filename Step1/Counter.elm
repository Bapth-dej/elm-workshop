module Counter exposing (..)

import Html exposing (Html, button, span, text, div)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = 0, view = view, update = update }


type Msg
    = Increment
    | Decrement -- 2) Then something below


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , span [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]

        -- 1) First you need to add the button here
        ]
