.class public final enum Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
.super Ljava/lang/Enum;
.source "BnRFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/BnRFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;


# instance fields
.field private code:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .registers 5

    .line 64
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    sget-object v1, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    sget-object v2, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    sget-object v4, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 65
    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v1, "STORAGE_FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v1, "INVALID_DATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const-string v3, "PARTIAL_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 64
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->$values()[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->code:I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .registers 1

    .line 64
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->code:I

    return v0
.end method
