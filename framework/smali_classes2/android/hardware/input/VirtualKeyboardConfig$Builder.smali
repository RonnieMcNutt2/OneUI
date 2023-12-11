.class public final Landroid/hardware/input/VirtualKeyboardConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualKeyboardConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyboardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualKeyboardConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLanguageTag:Ljava/lang/String;

.field private mLayoutType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLanguageTag(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayoutType(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLayoutType:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    .line 106
    const-string v0, "en-Latn-US"

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLanguageTag:Ljava/lang/String;

    .line 108
    const-string v0, "qwerty"

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLayoutType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualKeyboardConfig;
    .registers 3

    .line 164
    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualKeyboardConfig;-><init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;Landroid/hardware/input/VirtualKeyboardConfig-IA;)V

    return-object v0
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/hardware/input/VirtualKeyboardConfig$Builder;
    .registers 5
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 133
    const-string v0, "languageTag cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 135
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 138
    invoke-static {v0}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLanguageTag:Ljava/lang/String;

    .line 139
    return-object p0

    .line 136
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The language tag is not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLayoutType(Ljava/lang/String;)Landroid/hardware/input/VirtualKeyboardConfig$Builder;
    .registers 3
    .param p1, "layoutType"    # Ljava/lang/String;

    .line 154
    const-string v0, "layoutType cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->mLayoutType:Ljava/lang/String;

    .line 156
    return-object p0
.end method
