.class Landroid/app/ForegroundServiceTypePolicy$RegularPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegularPermission"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1132
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1133
    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1140
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)I
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "allowWhileInUse"    # Z

    .line 1148
    nop

    .line 1149
    invoke-static {p1, p2, p4, p3, p5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1151
    .local v0, "result":I
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v1, :cond_a

    .line 1153
    return v2

    .line 1155
    :cond_a
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1156
    .local v1, "opCode":I
    const/4 v3, 0x0

    if-ne v1, v2, :cond_17

    .line 1158
    if-nez v0, :cond_15

    .line 1159
    move v2, v3

    goto :goto_16

    :cond_15
    nop

    .line 1158
    :goto_16
    return v2

    .line 1161
    :cond_17
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 1162
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v4, v1, p3, p5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 1163
    .local v5, "mode":I
    packed-switch v5, :pswitch_data_44

    .line 1185
    :pswitch_26
    return v2

    .line 1174
    :pswitch_27
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->-$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z

    move-result v6

    if-eqz v6, :cond_31

    if-eqz p6, :cond_30

    goto :goto_31

    .line 1175
    :cond_30
    goto :goto_32

    :cond_31
    :goto_31
    move v2, v3

    .line 1174
    :goto_32
    return v2

    .line 1169
    :pswitch_33
    if-nez v0, :cond_37

    .line 1170
    move v2, v3

    goto :goto_38

    :cond_37
    nop

    .line 1169
    :goto_38
    return v2

    .line 1182
    :pswitch_39
    if-eqz p6, :cond_40

    const/4 v6, 0x1

    if-ne v0, v6, :cond_40

    .line 1183
    move v2, v3

    goto :goto_41

    :cond_40
    nop

    .line 1182
    :goto_41
    return v2

    .line 1166
    :pswitch_42
    return v3

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_42
        :pswitch_39
        :pswitch_26
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
