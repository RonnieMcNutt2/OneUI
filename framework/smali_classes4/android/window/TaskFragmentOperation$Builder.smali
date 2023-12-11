.class public final Landroid/window/TaskFragmentOperation$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityToken:Landroid/os/IBinder;

.field private mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

.field private mBundle:Landroid/os/Bundle;

.field private final mOpType:I

.field private mSecondaryFragmentToken:Landroid/os/IBinder;

.field private mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "opType"    # I

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mOpType:I

    .line 300
    return-void
.end method


# virtual methods
.method public build()Landroid/window/TaskFragmentOperation;
    .registers 11

    .line 362
    new-instance v9, Landroid/window/TaskFragmentOperation;

    iget v1, p0, Landroid/window/TaskFragmentOperation$Builder;->mOpType:I

    iget-object v2, p0, Landroid/window/TaskFragmentOperation$Builder;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/window/TaskFragmentOperation$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/window/TaskFragmentOperation$Builder;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentOperation$Builder;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/window/TaskFragmentOperation;-><init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;Landroid/window/TaskFragmentOperation-IA;)V

    return-object v9
.end method

.method public setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .line 326
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 327
    return-object p0
.end method

.method public setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 317
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityToken:Landroid/os/IBinder;

    .line 318
    return-object p0
.end method

.method public setAnimationParams(Landroid/window/TaskFragmentAnimationParams;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "animationParams"    # Landroid/window/TaskFragmentAnimationParams;

    .line 353
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 354
    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 335
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mBundle:Landroid/os/Bundle;

    .line 336
    return-object p0
.end method

.method public setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "secondaryFragmentToken"    # Landroid/os/IBinder;

    .line 344
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 345
    return-object p0
.end method

.method public setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;

    .line 308
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 309
    return-object p0
.end method
