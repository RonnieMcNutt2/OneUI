.class public final Landroid/window/OnBackInvokedCallbackInfo;
.super Ljava/lang/Object;
.source "OnBackInvokedCallbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/OnBackInvokedCallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mIsAnimationCallback:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/window/OnBackInvokedCallbackInfo$1;

    invoke-direct {v0}, Landroid/window/OnBackInvokedCallbackInfo$1;-><init>()V

    sput-object v0, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/OnBackInvokedCallbackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/window/IOnBackInvokedCallback;IZ)V
    .registers 4
    .param p1, "callback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "priority"    # I
    .param p3, "isAnimationCallback"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    .line 37
    iput p2, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    .line 38
    iput-boolean p3, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    return v0
.end method

.method public isAnimationCallback()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    return v0
.end method

.method public isSystemCallback()Z
    .registers 3

    .line 73
    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnBackInvokedCallbackInfo{mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAnimationCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 55
    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    return-void
.end method
