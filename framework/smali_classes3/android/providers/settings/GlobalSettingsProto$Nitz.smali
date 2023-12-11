.class public final Landroid/providers/settings/GlobalSettingsProto$Nitz;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Nitz"
.end annotation


# static fields
.field public static final NETWORK_DISCONNECT_RETENTION:J = 0x10b00000003L

.field public static final UPDATE_DIFF:J = 0x10b00000001L

.field public static final UPDATE_SPACING:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 903
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Nitz;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
