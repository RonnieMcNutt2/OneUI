.class public final Landroid/providers/settings/SecureSettingsProto$PackageVerifier;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageVerifier"
.end annotation


# static fields
.field public static final STATE:J = 0x10b00000002L

.field public static final USER_CONSENT:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 648
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$PackageVerifier;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
