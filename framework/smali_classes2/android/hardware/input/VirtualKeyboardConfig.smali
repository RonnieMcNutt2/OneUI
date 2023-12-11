.class public final Landroid/hardware/input/VirtualKeyboardConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualKeyboardConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualKeyboardConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualKeyboardConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "en-Latn-US"

.field public static final DEFAULT_LAYOUT_TYPE:Ljava/lang/String; = "qwerty"


# instance fields
.field private final mLanguageTag:Ljava/lang/String;

.field private final mLayoutType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyboardConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    .line 64
    invoke-static {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->-$$Nest$fgetmLanguageTag(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->-$$Nest$fgetmLayoutType(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;Landroid/hardware/input/VirtualKeyboardConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyboardConfig;-><init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualKeyboardConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyboardConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutType()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 100
    return-void
.end method
