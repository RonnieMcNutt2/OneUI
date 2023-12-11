.class public Landroid/app/ForegroundServiceDelegationOptions;
.super Ljava/lang/Object;
.source "ForegroundServiceDelegationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ForegroundServiceDelegationOptions$Builder;,
        Landroid/app/ForegroundServiceDelegationOptions$DelegationService;
    }
.end annotation


# static fields
.field public static final DELEGATION_SERVICE_CAMERA:I = 0x7

.field public static final DELEGATION_SERVICE_CONNECTED_DEVICE:I = 0x5

.field public static final DELEGATION_SERVICE_DATA_SYNC:I = 0x1

.field public static final DELEGATION_SERVICE_DEFAULT:I = 0x0

.field public static final DELEGATION_SERVICE_HEALTH:I = 0x9

.field public static final DELEGATION_SERVICE_LOCATION:I = 0x4

.field public static final DELEGATION_SERVICE_MEDIA_PLAYBACK:I = 0x2

.field public static final DELEGATION_SERVICE_MEDIA_PROJECTION:I = 0x6

.field public static final DELEGATION_SERVICE_MICROPHONE:I = 0x8

.field public static final DELEGATION_SERVICE_PHONE_CALL:I = 0x3

.field public static final DELEGATION_SERVICE_REMOTE_MESSAGING:I = 0xa

.field public static final DELEGATION_SERVICE_SPECIAL_USE:I = 0xc

.field public static final DELEGATION_SERVICE_SYSTEM_EXEMPTED:I = 0xb


# instance fields
.field public final mClientAppThread:Landroid/app/IApplicationThread;

.field public mClientInstanceName:Ljava/lang/String;

.field public final mClientPackageName:Ljava/lang/String;

.field public final mClientPid:I

.field public final mClientUid:I

.field public final mDelegationService:I

.field public final mForegroundServiceTypes:I

.field public final mSticky:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;II)V
    .registers 9
    .param p1, "clientPid"    # I
    .param p2, "clientUid"    # I
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "clientAppThread"    # Landroid/app/IApplicationThread;
    .param p5, "isSticky"    # Z
    .param p6, "clientInstanceName"    # Ljava/lang/String;
    .param p7, "foregroundServiceTypes"    # I
    .param p8, "delegationService"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    .line 104
    iput p2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 105
    iput-object p3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientAppThread:Landroid/app/IApplicationThread;

    .line 107
    iput-boolean p5, p0, Landroid/app/ForegroundServiceDelegationOptions;->mSticky:Z

    .line 108
    iput-object p6, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    .line 109
    iput p7, p0, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    .line 110
    iput p8, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    .line 111
    return-void
.end method

.method public static serviceCodeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "serviceCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_44

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_1d
    const-string v0, "SPECIAL_USE"

    return-object v0

    .line 187
    :pswitch_20
    const-string v0, "SYSTEM_EXEMPTED"

    return-object v0

    .line 185
    :pswitch_23
    const-string v0, "REMOTE_MESSAGING"

    return-object v0

    .line 183
    :pswitch_26
    const-string v0, "HEALTH"

    return-object v0

    .line 181
    :pswitch_29
    const-string v0, "MICROPHONE"

    return-object v0

    .line 179
    :pswitch_2c
    const-string v0, "CAMERA"

    return-object v0

    .line 177
    :pswitch_2f
    const-string v0, "MEDIA_PROJECTION"

    return-object v0

    .line 175
    :pswitch_32
    const-string v0, "CONNECTED_DEVICE"

    return-object v0

    .line 173
    :pswitch_35
    const-string v0, "LOCATION"

    return-object v0

    .line 171
    :pswitch_38
    const-string v0, "PHONE_CALL"

    return-object v0

    .line 169
    :pswitch_3b
    const-string v0, "MEDIA_PLAYBACK"

    return-object v0

    .line 167
    :pswitch_3e
    const-string v0, "DATA_SYNC"

    return-object v0

    .line 165
    :pswitch_41
    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 129
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    invoke-static {v3}, Landroid/app/ForegroundServiceDelegationOptions;->serviceCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ForegroundServiceDelegate{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string/jumbo v3, "service:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    .line 143
    invoke-static {v3}, Landroid/app/ForegroundServiceDelegationOptions;->serviceCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v3, "uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v3, "pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string v2, "instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z
    .registers 4
    .param p1, "that"    # Landroid/app/ForegroundServiceDelegationOptions;

    .line 119
    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 119
    :goto_1f
    return v0
.end method
