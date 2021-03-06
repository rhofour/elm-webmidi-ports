module WebMidi.Msg exposing (..)

import WebMidi.Types exposing (..)
import MidiTypes exposing (MidiEvent)


type Msg
    = WebMidiInitialise
    | ResponseWebMidiInitialised Bool
    | RequestDevices
    | InputDeviceConnected MidiConnection
    | OutputDeviceConnected MidiConnection
    | InputDeviceDisconnected MidiDisconnection
    | OutputDeviceDisconnected MidiDisconnection
    | EncodedEvent MidiEncodedEvent
    | Event String Float (Result String MidiEvent)
    | OutEvent (Maybe String) (List Int)
