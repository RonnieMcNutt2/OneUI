.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$Callback;,
        Landroid/view/KeyEvent$DispatcherState;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_KEY_CUSTOMIZATION:I = 0x10000000

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_FROM_WFD:I = 0x8000000

.field public static final FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_NOT_RESET_USER_ACTIVITY_TIMEOUT:I = 0x1000000

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_3FINGER_BOTTOM:I = 0x440

.field public static final KEYCODE_3FINGER_LEFT:I = 0x43d

.field public static final KEYCODE_3FINGER_RELEASE:I = 0x441

.field public static final KEYCODE_3FINGER_RIGHT:I = 0x43e

.field public static final KEYCODE_3FINGER_TOP:I = 0x43f

.field public static final KEYCODE_3G:I = 0x40c

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALL_APPS:I = 0x11c

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_ANC:I = 0x438

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SHORTCUT_1:I = 0x442

.field public static final KEYCODE_APP_SHORTCUT_2:I = 0x443

.field public static final KEYCODE_APP_SHORTCUT_3:I = 0x444

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BLUETOOTH:I = 0x40d

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_GAME:I = 0x41a

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_CLOSE_CNP_FROM_IME:I = 0x44e

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_COPY:I = 0x116

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_CUT:I = 0x115

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DEMO_APP_1:I = 0x12d

.field public static final KEYCODE_DEMO_APP_2:I = 0x12e

.field public static final KEYCODE_DEMO_APP_3:I = 0x12f

.field public static final KEYCODE_DEMO_APP_4:I = 0x130

.field public static final KEYCODE_DEX_ON_OFF:I = 0x43c

.field public static final KEYCODE_DOUBLE_TAP:I = 0x436

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_END:I = 0x40b

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FEATURED_APP_1:I = 0x129

.field public static final KEYCODE_FEATURED_APP_2:I = 0x12a

.field public static final KEYCODE_FEATURED_APP_3:I = 0x12b

.field public static final KEYCODE_FEATURED_APP_4:I = 0x12c

.field public static final KEYCODE_FN_LOCK:I = 0x44c

.field public static final KEYCODE_FN_UNLOCK:I = 0x44d

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_KEYBOARD_BACKLIGHT_DOWN:I = 0x131

.field public static final KEYCODE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x133

.field public static final KEYCODE_KEYBOARD_BACKLIGHT_UP:I = 0x132

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MACRO_1:I = 0x139

.field public static final KEYCODE_MACRO_2:I = 0x13a

.field public static final KEYCODE_MACRO_3:I = 0x13b

.field public static final KEYCODE_MACRO_4:I = 0x13c

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOUSE_ACTION:I = 0x424

.field public static final KEYCODE_MOUSE_APP_SHORTCUT_1:I = 0x445

.field public static final KEYCODE_MOUSE_APP_SHORTCUT_2:I = 0x446

.field public static final KEYCODE_MOUSE_APP_SHORTCUT_3:I = 0x447

.field public static final KEYCODE_MOUSE_APP_SHORTCUT_4:I = 0x448

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MULTI_WINDOW:I = 0x425

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final KEYCODE_NETWORK_SEL:I = 0x417

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PASTE:I = 0x117

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROFILE_SWITCH:I = 0x120

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_QUICK_SETTINGS:I = 0x44a

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RECENT_APPS:I = 0x138

.field public static final KEYCODE_REFRESH:I = 0x11d

.field public static final KEYCODE_RESET:I = 0x43b

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SFINDER:I = 0x428

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SIM:I = 0x418

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_STEM_1:I = 0x109

.field public static final KEYCODE_STEM_2:I = 0x10a

.field public static final KEYCODE_STEM_3:I = 0x10b

.field public static final KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final KEYCODE_STYLUS_BUTTON_PRIMARY:I = 0x134

.field public static final KEYCODE_STYLUS_BUTTON_SECONDARY:I = 0x135

.field public static final KEYCODE_STYLUS_BUTTON_TAIL:I = 0x137

.field public static final KEYCODE_STYLUS_BUTTON_TERTIARY:I = 0x136

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_SYSTEM_NAVIGATION_DOWN:I = 0x119

.field public static final KEYCODE_SYSTEM_NAVIGATION_LEFT:I = 0x11a

.field public static final KEYCODE_SYSTEM_NAVIGATION_RIGHT:I = 0x11b

.field public static final KEYCODE_SYSTEM_NAVIGATION_UP:I = 0x118

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TA_CHARGING:I = 0x435

.field public static final KEYCODE_THUMBS_DOWN:I = 0x11f

.field public static final KEYCODE_THUMBS_UP:I = 0x11e

.field public static final KEYCODE_TOUCHPAD_OFF:I = 0x434

.field public static final KEYCODE_TOUCHPAD_ON:I = 0x433

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VIDEO_APP_1:I = 0x121

.field public static final KEYCODE_VIDEO_APP_2:I = 0x122

.field public static final KEYCODE_VIDEO_APP_3:I = 0x123

.field public static final KEYCODE_VIDEO_APP_4:I = 0x124

.field public static final KEYCODE_VIDEO_APP_5:I = 0x125

.field public static final KEYCODE_VIDEO_APP_6:I = 0x126

.field public static final KEYCODE_VIDEO_APP_7:I = 0x127

.field public static final KEYCODE_VIDEO_APP_8:I = 0x128

.field public static final KEYCODE_VIEW_NOTIFICATION:I = 0x449

.field public static final KEYCODE_VIRTUALEYE_BUTTON:I = 0x413

.field public static final KEYCODE_VOICEMEMO_BUTTON:I = 0x414

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOICE_WAKEUP:I = 0x426

.field public static final KEYCODE_VOICE_WAKEUP_LPSD:I = 0x427

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WATCH:I = 0x419

.field public static final KEYCODE_WATCH_BUTTON_1:I = 0x44b

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field public static final LAST_KEYCODE:I = 0x13c

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field private static final SAMSUNG_INPUTKEYCODE:I = 0x3e8

.field private static final SAMSUNG_LAST_KEYCODE:I = 0x44f

.field private static final SAMSUNG_START_KEYCODE:I = 0x3e8

.field public static final SEM_FLAG_IGNORE_FAKE_FOCUS:I = 0x4000000

.field public static final SEM_FLAG_SKIP_IME_STAGE:I = 0x2000000

.field public static final SEM_KEYCODE_ALT_GR:I = 0x3f2

.field public static final SEM_KEYCODE_APPLICATION:I = 0x3ea

.field public static final SEM_KEYCODE_CLIPBOARD:I = 0x3f1

.field public static final SEM_KEYCODE_EMAIL:I = 0x3f0

.field public static final SEM_KEYCODE_LANG:I = 0x3ed

.field public static final SEM_KEYCODE_LAUNCH_HONEY_VOICE:I = 0x44f

.field public static final SEM_KEYCODE_LOCK:I = 0x3f3

.field public static final SEM_KEYCODE_MINIMODE_ON_OFF:I = 0x3e8

.field public static final SEM_KEYCODE_QPANEL_ON_OFF:I = 0x3eb

.field public static final SEM_KEYCODE_QUESTION:I = 0x3f6

.field public static final SEM_KEYCODE_RECENT_APPS:I = 0x3e9

.field public static final SEM_KEYCODE_SCREEN_CAPTURE:I = 0x3ec

.field public static final SEM_KEYCODE_SIP_ON_OFF:I = 0x3ee

.field public static final SEM_KEYCODE_SPEAKER:I = 0x3f4

.field public static final SEM_KEYCODE_TEXT:I = 0x3f5

.field public static final SEM_KEYCODE_USER:I = 0x3f7

.field public static final SEM_KEYCODE_USER_TOP:I = 0x437

.field public static final SEM_KEYCODE_VOICE_SEARCH:I = 0x3ef

.field public static final SEM_KEYCODE_WINK:I = 0x43a

.field public static final SEM_KEYCODE_WPS_BUTTON:I = 0x412

.field public static final SEM_META_ALT_GR_ON:I = 0x8000

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mHmac:[B

.field private mId:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I
    .registers 1

    iget p0, p0, Landroid/view/KeyEvent;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V
    .registers 2

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 32

    .line 1286
    const-string v0, "META_SHIFT_ON"

    const-string v1, "META_ALT_ON"

    const-string v2, "META_SYM_ON"

    const-string v3, "META_FUNCTION_ON"

    const-string v4, "META_ALT_LEFT_ON"

    const-string v5, "META_ALT_RIGHT_ON"

    const-string v6, "META_SHIFT_LEFT_ON"

    const-string v7, "META_SHIFT_RIGHT_ON"

    const-string v8, "META_CAP_LOCKED"

    const-string v9, "META_ALT_LOCKED"

    const-string v10, "META_SYM_LOCKED"

    const-string v11, "0x00000800"

    const-string v12, "META_CTRL_ON"

    const-string v13, "META_CTRL_LEFT_ON"

    const-string v14, "META_CTRL_RIGHT_ON"

    const-string v15, "0x00008000"

    const-string v16, "META_META_ON"

    const-string v17, "META_META_LEFT_ON"

    const-string v18, "META_META_RIGHT_ON"

    const-string v19, "0x00080000"

    const-string v20, "META_CAPS_LOCK_ON"

    const-string v21, "META_NUM_LOCK_ON"

    const-string v22, "META_SCROLL_LOCK_ON"

    const-string v23, "0x00800000"

    const-string v24, "0x01000000"

    const-string v25, "0x02000000"

    const-string v26, "0x04000000"

    const-string v27, "0x08000000"

    const-string v28, "0x10000000"

    const-string v29, "0x20000000"

    const-string v30, "0x40000000"

    const-string v31, "0x80000000"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1781
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3774
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 15

    .line 1884
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1887
    return-void
.end method

.method public constructor <init>(II)V
    .registers 17
    .param p1, "action"    # I
    .param p2, "code"    # I

    .line 1897
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1900
    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 22
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .line 1917
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1920
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 23
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .line 1938
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1940
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 25
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .line 1961
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1963
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .registers 26
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .line 1985
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1987
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .registers 27
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .line 2010
    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2012
    return-void
.end method

.method public constructor <init>(JJIIIIIIIII)V
    .registers 15
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I

    .line 2057
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2058
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2059
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2060
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2061
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2062
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2063
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2064
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2065
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2066
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2067
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2068
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2069
    iput p13, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2070
    return-void
.end method

.method private constructor <init>(JJIIIIIIIILjava/lang/String;)V
    .registers 16
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .line 2015
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2018
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2019
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2020
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2021
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2022
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2023
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2024
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2025
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2026
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2027
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2028
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2029
    iput-object p13, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2030
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 20
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .line 2086
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p4

    move/from16 v11, p5

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2089
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3793
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 3797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3800
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 3801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3807
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3808
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3809
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 3810
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 11
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .line 2095
    iget v2, p1, Landroid/view/KeyEvent;->mId:I

    iget-wide v3, p1, Landroid/view/KeyEvent;->mEventTime:J

    iget v5, p1, Landroid/view/KeyEvent;->mAction:I

    iget v6, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2096
    iget-object v0, p1, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_14
    move-object v7, v0

    iget-object v8, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2095
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2098
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .registers 12
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .line 2321
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    iget-wide v3, p1, Landroid/view/KeyEvent;->mEventTime:J

    iget v6, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2323
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V
    .registers 11
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "id"    # I
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "newRepeat"    # I
    .param p7, "hmac"    # [B
    .param p8, "characters"    # Ljava/lang/String;

    .line 2122
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2123
    iput p2, p0, Landroid/view/KeyEvent;->mId:I

    .line 2124
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2125
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2126
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2127
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2128
    iput p6, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2129
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2130
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2131
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2132
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2133
    iput-object p7, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2134
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2135
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2136
    iput-object p8, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2137
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .registers 14
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2115
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2116
    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget v5, p1, Landroid/view/KeyEvent;->mAction:I

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2115
    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2118
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 3669
    packed-switch p0, :pswitch_data_12

    .line 3677
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3675
    :pswitch_8
    const-string v0, "ACTION_MULTIPLE"

    return-object v0

    .line 3673
    :pswitch_b
    const-string v0, "ACTION_UP"

    return-object v0

    .line 3671
    :pswitch_e
    const-string v0, "ACTION_DOWN"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .line 2333
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .line 2344
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    move-object p0, v0

    .line 2345
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2346
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2347
    return-object p0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .line 2287
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 8
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .line 2303
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2304
    .local v0, "ret":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v1

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2305
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2306
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2307
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2308
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 3790
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 3
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .line 1774
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .registers 1

    .line 1748
    const/16 v0, 0x13c

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .registers 1

    .line 2740
    const v0, 0x770ff

    return v0
.end method

.method public static getSamsungLastKeyCode()I
    .registers 1

    .line 1764
    const/16 v0, 0x44f

    return v0
.end method

.method public static getSamsungStartKeyCode()I
    .registers 1

    .line 1757
    const/16 v0, 0x3e8

    return v0
.end method

.method public static final isAltKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2566
    const/16 v0, 0x39

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static final isConfirmKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2447
    sparse-switch p0, :sswitch_data_8

    .line 2454
    const/4 v0, 0x0

    return v0

    .line 2452
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x17 -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0xa0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2404
    sparse-switch p0, :sswitch_data_8

    .line 2438
    const/4 v0, 0x0

    return v0

    .line 2436
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x6c -> :sswitch_5
        0x6d -> :sswitch_5
        0x6e -> :sswitch_5
        0xbc -> :sswitch_5
        0xbd -> :sswitch_5
        0xbe -> :sswitch_5
        0xbf -> :sswitch_5
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMediaSessionKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2463
    sparse-switch p0, :sswitch_data_8

    .line 2476
    const/4 v0, 0x0

    return v0

    .line 2474
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMetaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2561
    const/16 v0, 0x75

    if-eq p0, v0, :cond_b

    const/16 v0, 0x76

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isModifierKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2760
    sparse-switch p0, :sswitch_data_8

    .line 2774
    const/4 v0, 0x0

    return v0

    .line 2772
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3f -> :sswitch_5
        0x4e -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isSystemKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2483
    sparse-switch p0, :sswitch_data_8

    .line 2522
    const/4 v0, 0x0

    return v0

    .line 2519
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_5
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0x118 -> :sswitch_5
        0x119 -> :sswitch_5
        0x11a -> :sswitch_5
        0x11b -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x138 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isWakeKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2527
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_8

    .line 2556
    const/4 v0, 0x0

    return v0

    .line 2535
    :sswitch_6
    return v0

    .line 2543
    :sswitch_7
    return v0

    :sswitch_data_8
    .sparse-switch
        0x3 -> :sswitch_7
        0x6 -> :sswitch_7
        0x1a -> :sswitch_7
        0x1b -> :sswitch_6
        0x52 -> :sswitch_6
        0xe0 -> :sswitch_6
        0xe1 -> :sswitch_6
        0x109 -> :sswitch_6
        0x10a -> :sswitch_6
        0x10b -> :sswitch_6
        0x419 -> :sswitch_7
        0x43b -> :sswitch_7
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .line 3710
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3711
    .local v0, "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_c

    if-eqz v1, :cond_b

    .line 3712
    return v0

    .line 3715
    .end local v0    # "keyCode":I
    :cond_b
    goto :goto_d

    .line 3714
    :catch_c
    move-exception v0

    .line 3717
    :goto_d
    const-string v0, "KEYCODE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3718
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3720
    :cond_1d
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 3721
    .restart local v0    # "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3722
    return v0

    .line 3724
    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method private static keyCodeIsValid(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 3730
    if-ltz p0, :cond_6

    const/16 v0, 0x13c

    if-le p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_14

    const/16 v0, 0x44f

    if-gt p0, v0, :cond_14

    :cond_e
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "keyCode"    # I

    .line 3695
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3696
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 11
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .line 2900
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2901
    .local v0, "wantBasic":Z
    :goto_9
    or-int v3, p3, p4

    .line 2902
    .local v3, "directional":I
    and-int v4, p1, v3

    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 2904
    .local v1, "wantLeftOrRight":Z
    :goto_11
    if-eqz v0, :cond_52

    .line 2905
    if-nez v1, :cond_18

    .line 2910
    not-int v2, v3

    and-int/2addr v2, p0

    return v2

    .line 2906
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2907
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2908
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2911
    :cond_52
    if-eqz v1, :cond_57

    .line 2912
    not-int v2, p2

    and-int/2addr v2, p0

    return v2

    .line 2914
    :cond_57
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .line 2879
    const v0, 0x700f00

    and-int/2addr v0, p1

    if-nez v0, :cond_3a

    .line 2886
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int p0, v0, v1

    .line 2887
    const/16 v0, 0x40

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2889
    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v3, 0x2

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2891
    const/16 v0, 0x2000

    const/16 v1, 0x4000

    const/16 v3, 0x1000

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2893
    const/high16 v0, 0x20000

    const/high16 v1, 0x40000

    const/high16 v3, 0x10000

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2895
    if-ne p0, p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    return v2

    .line 2880
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 3
    .param p0, "metaState"    # I

    .line 2843
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "metaState"    # I

    .line 3749
    if-nez p0, :cond_5

    .line 3750
    const-string v0, "0"

    return-object v0

    .line 3752
    :cond_5
    const/4 v0, 0x0

    .line 3753
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3754
    .local v1, "i":I
    :goto_7
    if-eqz p0, :cond_30

    .line 3755
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 3756
    .local v2, "isSet":Z
    :goto_10
    ushr-int/lit8 p0, p0, 0x1

    .line 3757
    if-eqz v2, :cond_2c

    .line 3758
    sget-object v3, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 3759
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 3760
    if-nez p0, :cond_1d

    .line 3761
    return-object v3

    .line 3763
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_2c

    .line 3765
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3766
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3769
    .end local v3    # "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    nop

    .end local v2    # "isSet":Z
    add-int/lit8 v1, v1, 0x1

    .line 3770
    goto :goto_7

    .line 3771
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method private static native nativeNextId()I
.end method

.method public static normalizeMetaState(I)I
    .registers 2
    .param p0, "metaState"    # I

    .line 2803
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    .line 2804
    or-int/lit8 p0, p0, 0x1

    .line 2806
    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    .line 2807
    or-int/lit8 p0, p0, 0x2

    .line 2809
    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    .line 2810
    or-int/lit16 p0, p0, 0x1000

    .line 2812
    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 2813
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2815
    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    .line 2816
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2818
    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    .line 2819
    or-int/lit8 p0, p0, 0x2

    .line 2821
    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    .line 2822
    or-int/lit8 p0, p0, 0x4

    .line 2824
    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .registers 3

    .line 2141
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2142
    :try_start_3
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2143
    .local v1, "ev":Landroid/view/KeyEvent;
    if-nez v1, :cond_e

    .line 2144
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v0

    return-object v2

    .line 2146
    :cond_e
    iget-object v2, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v2, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2147
    sget v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2148
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 2149
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2150
    invoke-virtual {v1}, Landroid/view/KeyEvent;->prepareForReuse()V

    .line 2151
    return-object v1

    .line 2148
    .end local v1    # "ev":Landroid/view/KeyEvent;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;
    .registers 32
    .param p0, "id"    # I
    .param p1, "downTimeNanos"    # J
    .param p3, "eventTimeNanos"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I
    .param p14, "hmac"    # [B
    .param p15, "characters"    # Ljava/lang/String;

    .line 2163
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2164
    .local v0, "ev":Landroid/view/KeyEvent;
    move/from16 v1, p0

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2165
    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2166
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2167
    move/from16 v6, p5

    iput v6, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2168
    move/from16 v7, p6

    iput v7, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2169
    move/from16 v8, p7

    iput v8, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2170
    move/from16 v9, p8

    iput v9, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2171
    move/from16 v10, p9

    iput v10, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2172
    move/from16 v11, p10

    iput v11, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2173
    move/from16 v12, p11

    iput v12, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2174
    move/from16 v13, p12

    iput v13, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2175
    move/from16 v14, p13

    iput v14, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2176
    move-object/from16 v15, p14

    iput-object v15, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2177
    move-object/from16 v1, p15

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2178
    return-object v0
.end method

.method public static obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 34
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scanCode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "displayId"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .line 2189
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, p0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2190
    .end local p0    # "downTime":J
    .local v0, "downTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v4, p2

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v18

    .line 2191
    .end local p2    # "eventTime":J
    .local v18, "eventTime":J
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    const/16 v16, 0x0

    move-wide v3, v0

    move-wide/from16 v5, v18

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v17, p13

    invoke-static/range {v2 .. v17}, Landroid/view/KeyEvent;->obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    return-object v2
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 27
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .line 2206
    const/4 v12, -0x1

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 4
    .param p0, "other"    # Landroid/view/KeyEvent;

    .line 2218
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2219
    .local v0, "ev":Landroid/view/KeyEvent;
    iget v1, p0, Landroid/view/KeyEvent;->mId:I

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2220
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2221
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2222
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2223
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2224
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2225
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2226
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2227
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2228
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2229
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2230
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2231
    iget-object v1, p0, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    goto :goto_40

    :cond_3a
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_40
    iput-object v1, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2232
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2233
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 3174
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3175
    return-void
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    .line 94
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .registers 2

    .line 2239
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .line 3493
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_74

    .line 3543
    return v1

    .line 3524
    :pswitch_7
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3525
    .local v0, "count":I
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3526
    .local v2, "code":I
    invoke-interface {p1, v2, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    .line 3527
    return v4

    .line 3529
    :cond_13
    if-eqz v2, :cond_2a

    .line 3530
    iput v1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3531
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3532
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3533
    .local v1, "handled":Z
    if-eqz v1, :cond_24

    .line 3534
    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3535
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3537
    :cond_24
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3538
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3539
    return v1

    .line 3541
    .end local v1    # "handled":Z
    :cond_2a
    return v1

    .line 3519
    .end local v0    # "count":I
    .end local v2    # "code":I
    :pswitch_2b
    if-eqz p2, :cond_30

    .line 3520
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3522
    :cond_30
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3495
    :pswitch_37
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3498
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3499
    .local v0, "res":Z
    if-eqz p2, :cond_72

    .line 3500
    if-eqz v0, :cond_58

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v1, :cond_58

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    .line 3502
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_72

    .line 3503
    :cond_58
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3505
    :try_start_64
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3507
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_6f
    .catch Ljava/lang/AbstractMethodError; {:try_start_64 .. :try_end_6f} :catch_71

    .line 3508
    const/4 v0, 0x1

    .line 3511
    :cond_70
    goto :goto_72

    .line 3510
    :catch_71
    move-exception v1

    .line 3514
    :cond_72
    :goto_72
    return v0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2b
        :pswitch_7
    .end packed-switch
.end method

.method public final getAction()I
    .registers 2

    .line 3156
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3227
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .registers 2

    .line 2572
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final getDisplayId()I
    .registers 2

    .line 2591
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public getDisplayLabel()C
    .registers 3

    .line 3346
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 5

    .line 3280
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEventTime()J
    .registers 5

    .line 3292
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEventTimeNanos()J
    .registers 3

    .line 3311
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .line 2690
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 2273
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .line 3336
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .registers 2

    .line 3212
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3408
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3322
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .registers 3
    .param p1, "chars"    # [C

    .line 3423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .line 3436
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .line 2651
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .registers 3

    .line 2671
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .registers 3

    .line 3460
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .registers 2

    .line 3251
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    .line 3238
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .registers 2

    .line 2578
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .registers 2

    .line 3369
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .registers 4
    .param p1, "metaState"    # I

    .line 3393
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .registers 3
    .param p1, "modifiers"    # I

    .line 2964
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .registers 2

    .line 2933
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .registers 2

    .line 2977
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isCanceled()Z
    .registers 2

    .line 3164
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isCapsLockOn()Z
    .registers 3

    .line 3122
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isCtrlPressed()Z
    .registers 2

    .line 3015
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isDown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2385
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isFunctionPressed()Z
    .registers 2

    .line 3040
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isLongPress()Z
    .registers 2

    .line 3202
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isMetaPressed()Z
    .registers 3

    .line 3028
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isNumLockOn()Z
    .registers 3

    .line 3134
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isPrintingKey()Z
    .registers 3

    .line 3469
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .registers 3

    .line 3146
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isShiftPressed()Z
    .registers 3

    .line 2990
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final isSymPressed()Z
    .registers 2

    .line 3002
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isSystem()Z
    .registers 2

    .line 2391
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .registers 3

    .line 2353
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isTracking()Z
    .registers 2

    .line 3194
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isWakeKey()Z
    .registers 2

    .line 2396
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .registers 4

    .line 2252
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2255
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2256
    :try_start_9
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_19

    .line 2257
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2258
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v1, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2259
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2261
    :cond_19
    monitor-exit v0

    .line 2262
    return-void

    .line 2261
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public final recycleIfNeededAfterDispatch()V
    .registers 1

    .line 2268
    return-void
.end method

.method public final semSetAltPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .line 3071
    if-eqz p1, :cond_9

    .line 3072
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_f

    .line 3074
    :cond_9
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3076
    :goto_f
    return-void
.end method

.method public final semSetCtrlPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .line 3088
    if-eqz p1, :cond_9

    .line 3089
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_f

    .line 3091
    :cond_9
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3093
    :goto_f
    return-void
.end method

.method public final semSetDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2612
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 2613
    return-void
.end method

.method public final semSetMetaPressed(Z)V
    .registers 4
    .param p1, "pressed"    # Z

    .line 3105
    if-eqz p1, :cond_a

    .line 3106
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_12

    .line 3108
    :cond_a
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3110
    :goto_12
    return-void
.end method

.method public semSetNonResetUserActivityTimeout()V
    .registers 3

    .line 2370
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2371
    return-void
.end method

.method public final semSetShiftPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .line 3054
    if-eqz p1, :cond_9

    .line 3055
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_f

    .line 3057
    :cond_9
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3059
    :goto_f
    return-void
.end method

.method public final setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2598
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2599
    return-void
.end method

.method public final setFlags(I)V
    .registers 2
    .param p1, "newFlags"    # I

    .line 2681
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2682
    return-void
.end method

.method public final setSource(I)V
    .registers 2
    .param p1, "source"    # I

    .line 2584
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2585
    return-void
.end method

.method public final setTainted(Z)V
    .registers 4
    .param p1, "tainted"    # Z

    .line 2359
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    if-eqz p1, :cond_8

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_8
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2360
    return-void
.end method

.method public final setTime(JJ)V
    .registers 7
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J

    .line 3264
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3265
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3266
    return-void
.end method

.method public final startTracking()V
    .registers 3

    .line 3185
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 3640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3641
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3642
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3643
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3644
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 3645
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    :cond_43
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3650
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3651
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3652
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3653
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3655
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3814
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3817
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3818
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3819
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3820
    iget-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3821
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3822
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3823
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3824
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3825
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3827
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3828
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3829
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3830
    return-void
.end method
