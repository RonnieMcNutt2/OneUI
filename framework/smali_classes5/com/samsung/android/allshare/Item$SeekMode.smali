.class public final enum Lcom/samsung/android/allshare/Item$SeekMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum ANY:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum NONE:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum TIME:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 5

    .line 199
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    sget-object v1, Lcom/samsung/android/allshare/Item$SeekMode;->TIME:Lcom/samsung/android/allshare/Item$SeekMode;

    sget-object v2, Lcom/samsung/android/allshare/Item$SeekMode;->ANY:Lcom/samsung/android/allshare/Item$SeekMode;

    sget-object v3, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    sget-object v4, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 201
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 203
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "TIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->TIME:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 205
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "ANY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->ANY:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 207
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 209
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 199
    invoke-static {}, Lcom/samsung/android/allshare/Item$SeekMode;->$values()[Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->$VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

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

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$SeekMode;->enumString:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 225
    if-nez p0, :cond_5

    .line 226
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 228
    :cond_5
    const-string v0, "ANY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 229
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->ANY:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 230
    :cond_10
    const-string v0, "BYTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 231
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 232
    :cond_1b
    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 233
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 234
    :cond_26
    const-string v0, "TIME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 235
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->TIME:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 236
    :cond_31
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 237
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 239
    :cond_3c
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 199
    const-class v0, Lcom/samsung/android/allshare/Item$SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 1

    .line 199
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->$VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$SeekMode;->enumString:Ljava/lang/String;

    return-object v0
.end method
