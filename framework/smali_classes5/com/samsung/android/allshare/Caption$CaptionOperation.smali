.class public final enum Lcom/samsung/android/allshare/Caption$CaptionOperation;
.super Ljava/lang/Enum;
.source "Caption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptionOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Caption$CaptionOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .registers 3

    .line 59
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    sget-object v1, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    sget-object v2, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/allshare/Caption$CaptionOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const/4 v1, 0x0

    const-string v2, "Enable"

    const-string v3, "ENABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 69
    new-instance v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const/4 v1, 0x1

    const-string v2, "Disable"

    const-string v3, "DISABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 74
    new-instance v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 59
    invoke-static {}, Lcom/samsung/android/allshare/Caption$CaptionOperation;->$values()[Lcom/samsung/android/allshare/Caption$CaptionOperation;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->$VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumString:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 90
    if-nez p0, :cond_5

    .line 91
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 93
    :cond_5
    const-string v0, "Enable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 94
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 95
    :cond_10
    const-string v0, "Disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 96
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 97
    :cond_1b
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 98
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 100
    :cond_26
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .registers 1

    .line 59
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->$VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Caption$CaptionOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumString:Ljava/lang/String;

    return-object v0
.end method
