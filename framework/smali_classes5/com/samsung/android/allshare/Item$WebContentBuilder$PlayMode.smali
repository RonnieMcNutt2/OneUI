.class public final enum Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item$WebContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

.field public static final enum REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

.field public static final enum RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 3

    .line 1280
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    sget-object v2, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1288
    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    const-string v1, "RELAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 1296
    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    const-string v1, "REDIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 1300
    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 1280
    invoke-static {}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->$values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->$VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 1304
    if-nez p0, :cond_5

    .line 1305
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1307
    :cond_5
    const-string v0, "REDIRECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1308
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1309
    :cond_10
    const-string v0, "RELAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1310
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1311
    :cond_1b
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1312
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1314
    :cond_26
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1280
    const-class v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 1

    .line 1280
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->$VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0
.end method
