.class public final Landroid/window/TaskFragmentTransaction$Change;
.super Ljava/lang/Object;
.source "TaskFragmentTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityToken:Landroid/os/IBinder;

.field private mErrorBundle:Landroid/os/Bundle;

.field private mErrorCallbackToken:Landroid/os/IBinder;

.field private mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

.field private mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

.field private mTaskFragmentToken:Landroid/os/IBinder;

.field private mTaskId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 373
    new-instance v0, Landroid/window/TaskFragmentTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    .line 197
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 202
    sget-object v0, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 205
    const-class v0, Landroid/window/TaskFragmentTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    .line 206
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    .line 208
    sget-object v0, Landroid/window/TaskFragmentParentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentParentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentTransaction$Change-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getErrorBundle()Landroid/os/Bundle;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_7
    return-object v0
.end method

.method public getErrorCallbackToken()Landroid/os/IBinder;
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTaskConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    return-object v0
.end method

.method public getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    return-object v0
.end method

.method public getTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 311
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    return v0
.end method

.method public setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    .line 280
    return-object p0
.end method

.method public setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    .line 293
    return-object p0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "errorBundle"    # Landroid/os/Bundle;

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    .line 270
    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 259
    iput-object p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 260
    return-object p0
.end method

.method public setTaskConfiguration(Landroid/content/res/Configuration;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 249
    return-object p0
.end method

.method public setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "info"    # Landroid/window/TaskFragmentInfo;

    .line 234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    .line 235
    return-object p0
.end method

.method public setTaskFragmentParentInfo(Landroid/window/TaskFragmentParentInfo;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "info"    # Landroid/window/TaskFragmentParentInfo;

    .line 305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentParentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    .line 306
    return-object p0
.end method

.method public setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 228
    return-object p0
.end method

.method public setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "taskId"    # I

    .line 241
    iput p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    .line 242
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change{ type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 215
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 218
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 221
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    return-void
.end method
