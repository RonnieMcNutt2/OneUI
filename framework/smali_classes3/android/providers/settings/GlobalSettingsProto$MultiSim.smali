.class public final Landroid/providers/settings/GlobalSettingsProto$MultiSim;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MultiSim"
.end annotation


# static fields
.field public static final DATA_CALL_SUBSCRIPTION:J = 0x10b00000003L

.field public static final SMS_PROMPT:J = 0x10b00000005L

.field public static final SMS_SUBSCRIPTION:J = 0x10b00000004L

.field public static final VOICE_CALL_SUBSCRIPTION:J = 0x10b00000001L

.field public static final VOICE_PROMPT:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 771
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$MultiSim;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
