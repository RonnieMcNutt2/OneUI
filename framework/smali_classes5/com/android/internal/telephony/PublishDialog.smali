.class public Lcom/android/internal/telephony/PublishDialog;
.super Ljava/lang/Object;
.source "PublishDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/PublishDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final CS_DOMAIN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PublishDialog"

.field public static final PS_DOMAIN:I = 0x2


# instance fields
.field private mCallCnapName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallCnapNamePresentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallCount:I

.field private mCallDirection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallDomain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallMptyCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallNumberPresentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallPullable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallRemoteUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 456
    new-instance v0, Lcom/android/internal/telephony/PublishDialog$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PublishDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PublishDialog;->readFromParcel(Landroid/os/Parcel;)V

    .line 256
    return-void
.end method

.method public static booleanArrayToArrayList([Z)Ljava/util/ArrayList;
    .registers 6
    .param p0, "arr"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-boolean v3, p0, v2

    .line 92
    .local v3, "i":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "i":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 94
    :cond_16
    return-object v0
.end method

.method public static intArrayToArrayList([I)Ljava/util/ArrayList;
    .registers 6
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 60
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 62
    :cond_16
    return-object v0
.end method

.method public static longArrayToArrayList([J)Ljava/util/ArrayList;
    .registers 7
    .param p0, "arr"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-wide v3, p0, v2

    .line 108
    .local v3, "i":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "i":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 110
    :cond_16
    return-object v0
.end method

.method public static stringArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "arr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 76
    .local v3, "i":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3    # "i":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 78
    :cond_12
    return-object v0
.end method


# virtual methods
.method public addCallCnapName(Ljava/lang/String;)V
    .registers 3
    .param p1, "callCnapName"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public addCallCnapNamePresentation(I)V
    .registers 4
    .param p1, "callCnapNamePresentation"    # I

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addCallDirection(I)V
    .registers 4
    .param p1, "callDirection"    # I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public addCallDomain(I)V
    .registers 4
    .param p1, "callDomain"    # I

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public addCallId(I)V
    .registers 4
    .param p1, "callId"    # I

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public addCallMpty(Z)V
    .registers 4
    .param p1, "mptyCall"    # Z

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public addCallNumberPresentation(I)V
    .registers 4
    .param p1, "callNumberPresentation"    # I

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public addCallPullable(Z)V
    .registers 4
    .param p1, "pullable"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public addCallRemoteUri(Ljava/lang/String;)V
    .registers 3
    .param p1, "callRemoteUri"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public addCallStatus(I)V
    .registers 4
    .param p1, "callStatus"    # I

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public addCallType(I)V
    .registers 4
    .param p1, "callType"    # I

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public addConnectedTime(J)V
    .registers 5
    .param p1, "connectedTime"    # J

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public arrayListToBooleanArray(Ljava/util/ArrayList;)[Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 82
    .local p1, "booleans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 83
    .local v0, "ret":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 86
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method public arrayListToIntArray(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 50
    .local p1, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 51
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 54
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method public arrayListToLongArray(Ljava/util/ArrayList;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 98
    .local p1, "longs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 99
    .local v0, "ret":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 100
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 102
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method public arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 66
    .local p1, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 70
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .registers 3

    .line 114
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_c2

    .line 115
    const-string v0, "==== Start Dump for Publish Diallog ====="

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==== mCallCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallDomain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallRemoteUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallPullable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallNumberPresentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallCnapNamePresentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallCnapName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallMptyCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 121
    const-string v0, "==== End Dump for Publish Diallog   ====="

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 123
    :cond_c2
    return-void
.end method

.method public getCallCnapName()[Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallCnapNamePresentation()[I
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallCount()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCount:I

    return v0
.end method

.method public getCallDirection()[I
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallDomain()[I
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallId()[I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallMpty()[Z
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToBooleanArray(Ljava/util/ArrayList;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getCallNumberPresentation()[I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallPullable()[Z
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToBooleanArray(Ljava/util/ArrayList;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getCallRemoteUri()[Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallStatus()[I
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallType()[I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method public getConnectedTime()[J
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PublishDialog;->arrayListToLongArray(Ljava/util/ArrayList;)[J

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 246
    const-string v0, "PublishDialog"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCount:I

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "length":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    if-lez v0, :cond_18

    .line 265
    new-array v1, v0, [I

    .line 266
    .local v1, "callId":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 268
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    .line 271
    .end local v1    # "callId":[I
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    if-lez v0, :cond_29

    .line 273
    new-array v1, v0, [I

    .line 274
    .local v1, "callDomain":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 276
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    .line 279
    .end local v1    # "callDomain":[I
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    if-lez v0, :cond_3a

    .line 281
    new-array v1, v0, [I

    .line 282
    .local v1, "callStatus":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 284
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    .line 287
    .end local v1    # "callStatus":[I
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    if-lez v0, :cond_4b

    .line 289
    new-array v1, v0, [I

    .line 290
    .local v1, "callType":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 292
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    .line 295
    .end local v1    # "callType":[I
    :cond_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    if-lez v0, :cond_5c

    .line 297
    new-array v1, v0, [I

    .line 298
    .local v1, "callDirection":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 300
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    .line 303
    .end local v1    # "callDirection":[I
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    if-lez v0, :cond_6d

    .line 305
    new-array v1, v0, [Ljava/lang/String;

    .line 306
    .local v1, "callRemoteUri":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 308
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->stringArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    .line 311
    .end local v1    # "callRemoteUri":[Ljava/lang/String;
    :cond_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    if-lez v0, :cond_7e

    .line 313
    new-array v1, v0, [Z

    .line 314
    .local v1, "callPullable":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 316
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->booleanArrayToArrayList([Z)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    .line 319
    .end local v1    # "callPullable":[Z
    :cond_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    if-lez v0, :cond_8f

    .line 321
    new-array v1, v0, [I

    .line 322
    .local v1, "callNumberPresentation":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 324
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    .line 327
    .end local v1    # "callNumberPresentation":[I
    :cond_8f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    if-lez v0, :cond_a0

    .line 329
    new-array v1, v0, [I

    .line 330
    .local v1, "callCnapNamePresentation":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 332
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->intArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    .line 335
    .end local v1    # "callCnapNamePresentation":[I
    :cond_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    if-lez v0, :cond_b1

    .line 337
    new-array v1, v0, [Ljava/lang/String;

    .line 338
    .local v1, "callCnapName":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 340
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->stringArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    .line 343
    .end local v1    # "callCnapName":[Ljava/lang/String;
    :cond_b1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    if-lez v0, :cond_c2

    .line 345
    new-array v1, v0, [Z

    .line 346
    .local v1, "callMptyCall":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 348
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->booleanArrayToArrayList([Z)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    .line 351
    .end local v1    # "callMptyCall":[Z
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    if-lez v0, :cond_d3

    .line 353
    new-array v1, v0, [J

    .line 354
    .local v1, "connectedTime":[J
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 356
    invoke-static {v1}, Lcom/android/internal/telephony/PublishDialog;->longArrayToArrayList([J)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    .line 358
    .end local v1    # "connectedTime":[J
    :cond_d3
    return-void
.end method

.method public setCallCount(I)V
    .registers 2
    .param p1, "callCount"    # I

    .line 126
    iput p1, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCount:I

    .line 127
    return-void
.end method

.method public setCallMpty(IZ)V
    .registers 6
    .param p1, "callId"    # I
    .param p2, "mptyCall"    # Z

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 234
    goto :goto_22

    .line 232
    :catch_a
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallMpty is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 235
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_22
    return-void
.end method

.method public setCallStatus(II)V
    .registers 6
    .param p1, "callId"    # I
    .param p2, "callStatus"    # I

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 162
    goto :goto_22

    .line 160
    :catch_a
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallStatus is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PublishDialog;->log(Ljava/lang/String;)V

    .line 163
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_22
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 363
    iget v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_24

    .line 369
    :cond_21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    :goto_24
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDomain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_42

    .line 376
    :cond_3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    :goto_42
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_60

    .line 383
    :cond_5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    :goto_60
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_7e

    .line 390
    :cond_7b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    :goto_7e
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_99

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallDirection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9c

    .line 397
    :cond_99
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    :goto_9c
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b7

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_ba

    .line 404
    :cond_b7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    :goto_ba
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d5

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallPullable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_d8

    .line 411
    :cond_d5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    :goto_d8
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f3

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallNumberPresentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_f6

    .line 418
    :cond_f3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    :goto_f6
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    if-eqz v0, :cond_111

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_111

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapNamePresentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallCnapNamePresentation()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_114

    .line 425
    :cond_111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    :goto_114
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    if-eqz v0, :cond_12f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12f

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallCnapName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallCnapName()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_132

    .line 432
    :cond_12f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    :goto_132
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mCallMptyCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_150

    .line 439
    :cond_14d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    :goto_150
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    if-eqz v0, :cond_16b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16b

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/PublishDialog;->mConnectedTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_16e

    .line 446
    :cond_16b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    :goto_16e
    return-void
.end method
