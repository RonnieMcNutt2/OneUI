.class public final enum Lcom/samsung/android/allshare/Device$DeviceType;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Device$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_KIES:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_TV_CONTROLLER:Lcom/samsung/android/allshare/Device$DeviceType;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 8

    .line 104
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v5, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v6, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    sget-object v7, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 109
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_IMAGEVIEWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 114
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_AVPLAYER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 119
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_PROVIDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 124
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_FILERECEIVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 129
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_TV_CONTROLLER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 134
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_KIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 139
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_SCREENSHARING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 141
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 104
    invoke-static {}, Lcom/samsung/android/allshare/Device$DeviceType;->$values()[Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/samsung/android/allshare/Device$DeviceType;->enumString:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 157
    if-nez p0, :cond_5

    .line 158
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 160
    :cond_5
    const-string v0, "DEVICE_AVPLAYER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 161
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 162
    :cond_10
    const-string v0, "DEVICE_FILERECEIVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 163
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 164
    :cond_1b
    const-string v0, "DEVICE_IMAGEVIEWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 165
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 166
    :cond_26
    const-string v0, "DEVICE_KIES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 167
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 168
    :cond_31
    const-string v0, "DEVICE_SCREENSHARING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 169
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 170
    :cond_3c
    const-string v0, "DEVICE_PROVIDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 171
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 172
    :cond_47
    const-string v0, "DEVICE_TV_CONTROLLER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 173
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 174
    :cond_52
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 175
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 177
    :cond_5d
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 104
    const-class v0, Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 1

    .line 104
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Device$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/allshare/Device$DeviceType;->enumString:Ljava/lang/String;

    return-object v0
.end method
