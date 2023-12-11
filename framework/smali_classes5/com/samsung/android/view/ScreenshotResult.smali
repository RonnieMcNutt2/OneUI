.class public Lcom/samsung/android/view/ScreenshotResult;
.super Ljava/lang/Object;
.source "ScreenshotResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/ScreenshotResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/ScreenshotResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL_REASON_EMPTY_BITMAP:I = 0x10

.field public static final FAIL_REASON_INVALID_DISPLAY:I = 0x1

.field public static final FAIL_REASON_INVALID_FOCUSED_APP:I = 0x4

.field public static final FAIL_REASON_INVALID_MAIN_APP_WINDOW:I = 0x8

.field public static final FAIL_REASON_INVALID_SYSTEM_WINDOW:I = 0x2

.field public static final FAIL_REASON_SECURE_POLICY_BY_MDM:I = 0x40

.field public static final FAIL_REASON_SECURE_POLICY_BY_SECURE_FLAGS:I = 0x20


# instance fields
.field private mCapturedBitmap:Landroid/graphics/Bitmap;

.field private mFailedReason:I

.field private mSecuredWindowName:Ljava/lang/String;

.field private mTargetWindowName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/samsung/android/view/ScreenshotResult$1;

    invoke-direct {v0}, Lcom/samsung/android/view/ScreenshotResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/ScreenshotResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "failedReason"    # I
    .param p3, "targetWindowName"    # Ljava/lang/String;
    .param p4, "securedWindowName"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput p2, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    .line 49
    iput-object p3, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/view/ScreenshotResult-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/view/ScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 55
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    goto :goto_17

    .line 57
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 59
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/view/ScreenshotResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/view/ScreenshotResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getCapturedBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFailedReason()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    return v0
.end method

.method public getSecuredWindowName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetWindowName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 131
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    :goto_12
    iget v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void
.end method
