.class public Lcom/android/internal/widget/RemoteLockInfo$Builder;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFailCount:I

.field private mBundle:Landroid/os/Bundle;

.field private mClientName:Ljava/lang/CharSequence;

.field private mEmailAddress:Ljava/lang/CharSequence;

.field private mEnableEmergencyCall:Z

.field private mLockState:Z

.field private mLockTimeOut:J

.field private mLockType:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPermanentBlockCount:I

.field private mPhoneNumber:Ljava/lang/CharSequence;

.field private mSkipPinContainer:Z

.field private mSkipSupportContainer:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowFailCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBundle(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientName(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmailAddress(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableEmergencyCall(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockState(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockTimeOut(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLockType(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessage(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermanentBlockCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneNumber(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkipPinContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkipSupportContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipSupportContainer:Z

    return p0
.end method

.method public constructor <init>(IZ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 173
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 174
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 176
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 177
    iput v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 178
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 179
    iput v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipSupportContainer:Z

    .line 182
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    .line 185
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    .line 186
    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    .line 187
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/widget/RemoteLockInfo;
    .registers 2

    .line 245
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V

    return-object v0
.end method

.method public setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 215
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 216
    return-object p0
.end method

.method public setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 225
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    .line 226
    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 240
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    .line 241
    return-object p0
.end method

.method public setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 210
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 211
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "email"    # Ljava/lang/CharSequence;

    .line 200
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    .line 201
    return-object p0
.end method

.method public setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 205
    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 206
    return-object p0
.end method

.method public setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 3
    .param p1, "time"    # J

    .line 220
    iput-wide p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 221
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 190
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 191
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 195
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 196
    return-object p0
.end method

.method public setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "skipPin"    # Z

    .line 230
    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    .line 231
    return-object p0
.end method

.method public setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .registers 2
    .param p1, "skipSupport"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipSupportContainer:Z

    .line 236
    return-object p0
.end method
