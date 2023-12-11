.class public final Landroid/window/TransitionRequestInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionRequestInfo$DisplayChange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

.field private mRemoteTransition:Landroid/window/RemoteTransition;

.field private mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 441
    new-instance v0, Landroid/window/TransitionRequestInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p4, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 308
    const-class v0, Landroid/view/WindowManager$TransitionType;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 310
    iput-object p2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 311
    iput-object p3, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 312
    iput-object p4, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 315
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 425
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 426
    .local v1, "type":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_1a

    :cond_12
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1a
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_20

    move-object v4, v3

    goto :goto_28

    :cond_20
    sget-object v4, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/RemoteTransition;

    .line 428
    .local v4, "remoteTransition":Landroid/window/RemoteTransition;
    :goto_28
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2e

    move-object v5, v3

    goto :goto_36

    :cond_2e
    sget-object v5, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 430
    .local v5, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    :goto_36
    iput v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 431
    const-class v6, Landroid/view/WindowManager$TransitionType;

    invoke-static {v6, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 433
    iput-object v2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 434
    iput-object v4, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 435
    iput-object v5, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 438
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v0
.end method

.method public getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 322
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    return v0
.end method

.method public setDisplayChange(Landroid/window/TransitionRequestInfo$DisplayChange;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 378
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 379
    return-object p0
.end method

.method public setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/window/RemoteTransition;

    .line 367
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 368
    return-object p0
.end method

.method public setTriggerTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 358
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 359
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRequestInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 389
    invoke-static {v1}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "flg":B
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 404
    :cond_8
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 405
    :cond_f
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 406
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 407
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_25

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 409
    :cond_25
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_2c

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 410
    :cond_2c
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_33

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    :cond_33
    return-void
.end method
