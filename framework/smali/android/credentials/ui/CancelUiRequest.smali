.class public final Landroid/credentials/ui/CancelUiRequest;
.super Ljava/lang/Object;
.source "CancelUiRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/ui/CancelUiRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CANCEL_UI_REQUEST:Ljava/lang/String; = "android.credentials.ui.extra.EXTRA_CANCEL_UI_REQUEST"


# instance fields
.field private final mAppPackageName:Ljava/lang/String;

.field private final mShouldShowCancellationUi:Z

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/credentials/ui/CancelUiRequest$1;

    invoke-direct {v0}, Landroid/credentials/ui/CancelUiRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/ui/CancelUiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ZLjava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shouldShowCancellationUi"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/credentials/ui/CancelUiRequest;->mToken:Landroid/os/IBinder;

    .line 70
    iput-boolean p2, p0, Landroid/credentials/ui/CancelUiRequest;->mShouldShowCancellationUi:Z

    .line 71
    iput-object p3, p0, Landroid/credentials/ui/CancelUiRequest;->mAppPackageName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mToken:Landroid/os/IBinder;

    .line 76
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/ui/CancelUiRequest;->mShouldShowCancellationUi:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mAppPackageName:Ljava/lang/String;

    .line 79
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/credentials/ui/CancelUiRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/ui/CancelUiRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public shouldShowCancellationUi()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Landroid/credentials/ui/CancelUiRequest;->mShouldShowCancellationUi:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 85
    iget-boolean v0, p0, Landroid/credentials/ui/CancelUiRequest;->mShouldShowCancellationUi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    iget-object v0, p0, Landroid/credentials/ui/CancelUiRequest;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 87
    return-void
.end method
