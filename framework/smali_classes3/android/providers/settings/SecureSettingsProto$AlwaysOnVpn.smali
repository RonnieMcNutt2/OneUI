.class public final Landroid/providers/settings/SecureSettingsProto$AlwaysOnVpn;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AlwaysOnVpn"
.end annotation


# static fields
.field public static final APP:J = 0x10b00000001L

.field public static final LOCKDOWN:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 177
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$AlwaysOnVpn;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
