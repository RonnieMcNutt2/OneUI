.class public final enum Lcom/samsung/android/transcode/util/SEFHelper$Speed;
.super Ljava/lang/Enum;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/SEFHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/SEFHelper$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .registers 9

    .line 45
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v3, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v5, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v6, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v7, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    sget-object v8, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 47
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "HALF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 48
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "ONE_FOURTH"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 49
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "ONE_EIGHTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 50
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "TWO_TIMES"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 51
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "FOUR_TIMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 52
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "EIGHT_TIMES"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 53
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "SIXTEEN_TIMES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 54
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "THIRTY_TWO_TIMES"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 45
    invoke-static {}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->$values()[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->$VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "va"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .registers 1

    .line 45
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->$VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0
.end method
