.class public Landroid/app/ForegroundServiceDelegationOptions$Builder;
.super Ljava/lang/Object;
.source "ForegroundServiceDelegationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceDelegationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mClientAppThread:Landroid/app/IApplicationThread;

.field mClientInstanceName:Ljava/lang/String;

.field mClientNotificationId:I

.field mClientPackageName:Ljava/lang/String;

.field mClientPid:I

.field mClientUid:I

.field mDelegationService:I

.field mForegroundServiceTypes:I

.field mSticky:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ForegroundServiceDelegationOptions;
    .registers 11

    .line 287
    new-instance v9, Landroid/app/ForegroundServiceDelegationOptions;

    iget v1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    iget v2, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    iget-object v3, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    iget-boolean v5, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    iget-object v6, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    iget v7, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    iget v8, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;II)V

    return-object v9
.end method

.method public setClientAppThread(Landroid/app/IApplicationThread;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientAppThread"    # Landroid/app/IApplicationThread;

    .line 247
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    .line 248
    return-object p0
.end method

.method public setClientInstanceName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientInstanceName"    # Ljava/lang/String;

    .line 255
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setClientNotificationId(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientNotificationId"    # I

    .line 239
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotificationId:I

    .line 240
    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setClientPid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientPid"    # I

    .line 215
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    .line 216
    return-object p0
.end method

.method public setClientUid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "clientUid"    # I

    .line 223
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    .line 224
    return-object p0
.end method

.method public setDelegationService(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "delegationService"    # I

    .line 279
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    .line 280
    return-object p0
.end method

.method public setForegroundServiceTypes(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "foregroundServiceTypes"    # I

    .line 271
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    .line 272
    return-object p0
.end method

.method public setSticky(Z)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .registers 2
    .param p1, "isSticky"    # Z

    .line 263
    iput-boolean p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    .line 264
    return-object p0
.end method
