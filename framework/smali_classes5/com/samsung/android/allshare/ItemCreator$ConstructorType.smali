.class final enum Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
.super Ljava/lang/Enum;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConstructorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .registers 4

    .line 26
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v2, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "MEDIA_SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 28
    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "WEB_CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 29
    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "LOCAL_CONTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 30
    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 26
    invoke-static {}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 46
    if-nez p0, :cond_5

    .line 47
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 49
    :cond_5
    const-string v0, "LOCAL_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 51
    :cond_10
    const-string v0, "MEDIA_SERVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 52
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 53
    :cond_1b
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 54
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 55
    :cond_26
    const-string v0, "WEB_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 56
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 58
    :cond_31
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .registers 1

    .line 26
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    return-object v0
.end method
