.class public final enum Lcom/samsung/android/allshare/Item$MediaType;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Item$MediaType;
    .registers 5

    .line 76
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    sget-object v2, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    sget-object v3, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 78
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_FOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    .line 80
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    .line 82
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_IMAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    .line 84
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    .line 86
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    .line 76
    invoke-static {}, Lcom/samsung/android/allshare/Item$MediaType;->$values()[Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->$VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$MediaType;->enumString:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 102
    if-nez p0, :cond_5

    .line 103
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 105
    :cond_5
    const-string v0, "ITEM_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 107
    :cond_10
    const-string v0, "ITEM_FOLDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 108
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 109
    :cond_1b
    const-string v0, "ITEM_IMAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 110
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 111
    :cond_26
    const-string v0, "ITEM_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 112
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 113
    :cond_31
    const-string v0, "ITEM_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 114
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 116
    :cond_3c
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/samsung/android/allshare/Item$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Item$MediaType;
    .registers 1

    .line 76
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->$VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$MediaType;->enumString:Ljava/lang/String;

    return-object v0
.end method
