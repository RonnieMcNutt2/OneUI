.class final enum Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
.super Ljava/lang/Enum;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;


# instance fields
.field private code:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .registers 3

    .line 93
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 94
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/4 v1, -0x1

    const-string v2, "INVALID_VALUE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 95
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 96
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_FAIL"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 93
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$values()[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

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

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .registers 1

    .line 93
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    return v0
.end method
