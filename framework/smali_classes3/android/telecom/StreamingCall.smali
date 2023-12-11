.class public final Landroid/telecom/StreamingCall;
.super Ljava/lang/Object;
.source "StreamingCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/StreamingCall$StreamingCallState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/StreamingCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android.telecom.extra.CALL_ID"

.field public static final STATE_DISCONNECTED:I = 0x3

.field public static final STATE_HOLDING:I = 0x2

.field public static final STATE_STREAMING:I = 0x1


# instance fields
.field private mAdapter:Landroid/telecom/StreamingCallAdapter;

.field private final mAddress:Landroid/net/Uri;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mDisplayName:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/telecom/StreamingCall$1;

    invoke-direct {v0}, Landroid/telecom/StreamingCall$1;-><init>()V

    sput-object v0, Landroid/telecom/StreamingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "address"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 123
    iput-object p1, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    .line 124
    iput-object p2, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    .line 125
    iput-object p3, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    .line 126
    iput-object p4, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/StreamingCall;->mState:I

    .line 128
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 67
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    .line 69
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/StreamingCall;->mState:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/StreamingCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/StreamingCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Landroid/net/Uri;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/telecom/StreamingCall;->mState:I

    return v0
.end method

.method public requestStreamingState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 189
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/StreamingCallAdapter;->setStreamingState(I)V

    .line 190
    return-void
.end method

.method public setAdapter(Landroid/telecom/StreamingCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/telecom/StreamingCallAdapter;

    .line 134
    iput-object p1, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    iget v0, p0, Landroid/telecom/StreamingCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
