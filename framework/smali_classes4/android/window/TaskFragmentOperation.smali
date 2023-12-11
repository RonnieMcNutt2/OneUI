.class public final Landroid/window/TaskFragmentOperation;
.super Ljava/lang/Object;
.source "TaskFragmentOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentOperation$Builder;,
        Landroid/window/TaskFragmentOperation$OperationType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final OP_TYPE_CLEAR_ADJACENT_TASK_FRAGMENTS:I = 0x5

.field public static final OP_TYPE_CREATE_TASK_FRAGMENT:I = 0x0

.field public static final OP_TYPE_DELETE_TASK_FRAGMENT:I = 0x1

.field public static final OP_TYPE_REPARENT_ACTIVITY_TO_TASK_FRAGMENT:I = 0x3

.field public static final OP_TYPE_REQUEST_FOCUS_ON_TASK_FRAGMENT:I = 0x6

.field public static final OP_TYPE_SET_ADJACENT_TASK_FRAGMENTS:I = 0x4

.field public static final OP_TYPE_SET_ANIMATION_PARAMS:I = 0x8

.field public static final OP_TYPE_SET_COMPANION_TASK_FRAGMENT:I = 0x7

.field public static final OP_TYPE_SET_RELATIVE_BOUNDS:I = 0x9

.field public static final OP_TYPE_START_ACTIVITY_IN_TASK_FRAGMENT:I = 0x2

.field public static final OP_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivityIntent:Landroid/content/Intent;

.field private final mActivityToken:Landroid/os/IBinder;

.field private final mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

.field private final mBundle:Landroid/os/Bundle;

.field private final mOpType:I

.field private final mSecondaryFragmentToken:Landroid/os/IBinder;

.field private final mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/window/TaskFragmentOperation$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentOperation$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;)V
    .registers 8
    .param p1, "opType"    # I
    .param p2, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "activityIntent"    # Landroid/content/Intent;
    .param p5, "bundle"    # Landroid/os/Bundle;
    .param p6, "secondaryFragmentToken"    # Landroid/os/IBinder;
    .param p7, "animationParams"    # Landroid/window/TaskFragmentAnimationParams;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    .line 119
    iput-object p2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 120
    iput-object p3, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 121
    iput-object p4, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 122
    iput-object p5, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 123
    iput-object p6, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 124
    iput-object p7, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;Landroid/window/TaskFragmentOperation-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/window/TaskFragmentOperation;-><init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    .line 129
    sget-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 131
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 134
    sget-object v0, Landroid/window/TaskFragmentAnimationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentAnimationParams;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 253
    instance-of v0, p1, Landroid/window/TaskFragmentOperation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 254
    return v1

    .line 256
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/window/TaskFragmentOperation;

    .line 257
    .local v0, "other":Landroid/window/TaskFragmentOperation;
    iget v2, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    iget v3, v0, Landroid/window/TaskFragmentOperation;->mOpType:I

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 258
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 259
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 260
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 261
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 262
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 263
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_4d
    nop

    .line 257
    :goto_4e
    return v1
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAnimationParams()Landroid/window/TaskFragmentAnimationParams;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOpType()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    return v0
.end method

.method public getSecondaryFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 247
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskFragmentOperation{ opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    if-eqz v1, :cond_1f

    .line 223
    const-string v1, ", taskFragmentCreationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1f
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2e

    .line 226
    const-string v1, ", activityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    :cond_2e
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3d

    .line 229
    const-string v1, ", activityIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    :cond_3d
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4c

    .line 232
    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :cond_4c
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_5b

    .line 235
    const-string v1, ", secondaryFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    :cond_5b
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    if-eqz v1, :cond_6a

    .line 238
    const-string v1, ", animationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    :cond_6a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 142
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 145
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    return-void
.end method
