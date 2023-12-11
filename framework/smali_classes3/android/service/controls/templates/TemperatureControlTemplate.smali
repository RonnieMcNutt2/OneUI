.class public final Landroid/service/controls/templates/TemperatureControlTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "TemperatureControlTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/templates/TemperatureControlTemplate$ModeFlag;,
        Landroid/service/controls/templates/TemperatureControlTemplate$Mode;
    }
.end annotation


# static fields
.field private static final ALL_FLAGS:I = 0x3e

.field public static final FLAG_MODE_COOL:I = 0x8

.field public static final FLAG_MODE_ECO:I = 0x20

.field public static final FLAG_MODE_HEAT:I = 0x4

.field public static final FLAG_MODE_HEAT_COOL:I = 0x10

.field public static final FLAG_MODE_OFF:I = 0x2

.field private static final KEY_CURRENT_ACTIVE_MODE:Ljava/lang/String; = "key_current_active_mode"

.field private static final KEY_CURRENT_MODE:Ljava/lang/String; = "key_current_mode"

.field private static final KEY_MODES:Ljava/lang/String; = "key_modes"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"

.field public static final MODE_COOL:I = 0x3

.field public static final MODE_ECO:I = 0x5

.field public static final MODE_HEAT:I = 0x2

.field public static final MODE_HEAT_COOL:I = 0x4

.field public static final MODE_OFF:I = 0x1

.field public static final MODE_UNKNOWN:I = 0x0

.field private static final NUM_MODES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ThermostatTemplate"

.field private static final TYPE:I = 0x7

.field private static final modeToFlag:[I


# instance fields
.field private final mCurrentActiveMode:I

.field private final mCurrentMode:I

.field private final mModes:I

.field private final mTemplate:Landroid/service/controls/templates/ControlTemplate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 137
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 201
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    .line 202
    const-string/jumbo v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/service/controls/templates/ControlTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 203
    const-string/jumbo v0, "key_current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    .line 204
    const-string/jumbo v0, "key_current_active_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    .line 205
    const-string/jumbo v0, "key_modes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlTemplate;III)V
    .registers 11
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;
    .param p3, "currentMode"    # I
    .param p4, "currentActiveMode"    # I
    .param p5, "modesFlag"    # I

    .line 168
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iput-object p2, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 172
    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "ThermostatTemplate"

    if-ltz p3, :cond_14

    if-lt p3, v0, :cond_11

    goto :goto_14

    .line 176
    :cond_11
    iput p3, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    goto :goto_2c

    .line 173
    :cond_14
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid current mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    .line 179
    :goto_2c
    if-ltz p4, :cond_34

    if-lt p4, v0, :cond_31

    goto :goto_34

    .line 183
    :cond_31
    iput p4, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    goto :goto_4c

    .line 180
    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid current active mode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    .line 186
    :goto_4c
    and-int/lit8 v0, p5, 0x3e

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    .line 187
    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    const-string v2, " not supported in flag."

    const-string v3, "Mode "

    if-eqz v1, :cond_7d

    sget-object v4, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    aget v1, v4, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_60

    goto :goto_7d

    .line 188
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_7d
    :goto_7d
    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    if-eqz v1, :cond_a4

    sget-object v4, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    aget v1, v4, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_89

    goto :goto_a4

    .line 191
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_a4
    :goto_a4
    return-void
.end method


# virtual methods
.method public getCurrentActiveMode()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    return v0
.end method

.method public getCurrentMode()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    .line 215
    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    const-string/jumbo v1, "key_current_mode"

    iget v2, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string/jumbo v1, "key_current_active_mode"

    iget v2, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string/jumbo v1, "key_modes"

    iget v2, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    return-object v0
.end method

.method public getModes()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    return v0
.end method

.method public getTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public getTemplateType()I
    .registers 2

    .line 245
    const/4 v0, 0x7

    return v0
.end method
