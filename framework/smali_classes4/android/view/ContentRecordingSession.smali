.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final RECORD_CONTENT_TASK:I = 0x1


# instance fields
.field private mContentToRecord:I

.field private mDisplayToRecord:I

.field private mTokenToRecord:Landroid/os/IBinder;

.field private mVirtualDisplayId:I

.field private mWaitingForConsent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 420
    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 73
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 90
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 96
    return-void
.end method

.method constructor <init>(IIILandroid/os/IBinder;Z)V
    .registers 11
    .param p1, "virtualDisplayId"    # I
    .param p2, "contentToRecord"    # I
    .param p3, "displayToRecord"    # I
    .param p4, "tokenToRecord"    # Landroid/os/IBinder;
    .param p5, "waitingForConsent"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 73
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 90
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 185
    iput p1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 186
    iput p2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 188
    if-eqz p2, :cond_4f

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    goto :goto_4f

    .line 190
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentToRecord was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_4f
    :goto_4f
    iput p3, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 197
    iput-object p4, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 198
    iput-boolean p5, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 201
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 73
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 90
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 395
    .local v2, "flg":B
    and-int/lit8 v3, v2, 0x10

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 396
    .local v3, "waitingForConsent":Z
    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 397
    .local v5, "virtualDisplayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 398
    .local v6, "contentToRecord":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 399
    .local v7, "displayToRecord":I
    and-int/lit8 v8, v2, 0x8

    if-nez v8, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 401
    .local v0, "tokenToRecord":Landroid/os/IBinder;
    :goto_31
    iput v5, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 402
    iput v6, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 404
    if-eqz v6, :cond_6f

    if-ne v6, v4, :cond_3a

    goto :goto_6f

    .line 406
    :cond_3a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentToRecord was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "), RECORD_CONTENT_TASK("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 412
    :cond_6f
    :goto_6f
    iput v7, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 413
    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 414
    iput-boolean v3, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 417
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    return-void
.end method

.method public static createDisplaySession(I)Landroid/view/ContentRecordingSession;
    .registers 3
    .param p0, "displayToMirror"    # I

    .line 102
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public static createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 3
    .param p0, "taskWindowContainerToken"    # Landroid/os/IBinder;

    .line 111
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public static isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .registers 4
    .param p0, "session"    # Landroid/view/ContentRecordingSession;
    .param p1, "incomingSession"    # Landroid/view/ContentRecordingSession;

    .line 139
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 140
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 139
    :goto_11
    return v0
.end method

.method public static isValid(Landroid/view/ContentRecordingSession;)Z
    .registers 7
    .param p0, "session"    # Landroid/view/ContentRecordingSession;

    .line 122
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 123
    return v0

    .line 125
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 126
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v0

    .line 127
    .local v1, "isValidTaskSession":Z
    :goto_14
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_23

    .line 128
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v3

    if-le v3, v4, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v0

    .line 129
    .local v3, "isValidDisplaySession":Z
    :goto_24
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v5

    if-le v5, v4, :cond_2f

    if-nez v1, :cond_2e

    if-eqz v3, :cond_2f

    :cond_2e
    move v0, v2

    :cond_2f
    return v0
.end method

.method public static recordContentToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 169
    packed-switch p0, :pswitch_data_e

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_8
    const-string v0, "RECORD_CONTENT_TASK"

    return-object v0

    .line 171
    :pswitch_b
    const-string v0, "RECORD_CONTENT_DISPLAY"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 339
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 340
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 342
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/ContentRecordingSession;

    .line 344
    .local v2, "that":Landroid/view/ContentRecordingSession;
    iget v3, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 348
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-boolean v3, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iget-boolean v4, v2, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-ne v3, v4, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 344
    :goto_39
    return v0

    .line 340
    .end local v2    # "that":Landroid/view/ContentRecordingSession;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public getContentToRecord()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return v0
.end method

.method public getDisplayToRecord()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    return v0
.end method

.method public getTokenToRecord()Landroid/os/IBinder;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object v0
.end method

.method public getVirtualDisplayId()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    add-int/2addr v1, v2

    .line 360
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v0, v2

    .line 361
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    add-int/2addr v1, v2

    .line 362
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 364
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public isWaitingForConsent()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    return v0
.end method

.method public setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 6
    .param p1, "value"    # I

    .line 268
    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 270
    if-eqz p1, :cond_3e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_3e

    .line 272
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentToRecord was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_3e
    :goto_3e
    return-object p0
.end method

.method public setDisplayToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 289
    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 290
    return-object p0
.end method

.method public setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # Landroid/os/IBinder;

    .line 301
    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 302
    return-object p0
.end method

.method public setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 259
    iput p1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 260
    return-object p0
.end method

.method public setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # Z

    .line 313
    iput-boolean p1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 314
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentRecordingSession { virtualDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 325
    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitingForConsent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 375
    :cond_8
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 376
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 377
    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_28

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 381
    :cond_28
    return-void
.end method
