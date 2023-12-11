.class public final Landroid/providers/settings/SecureSettingsProto$TrackpadGesture;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackpadGesture"
.end annotation


# static fields
.field public static final TRACKPAD_GESTURE_BACK_ENABLED:J = 0x10b00000001L

.field public static final TRACKPAD_GESTURE_HOME_ENABLED:J = 0x10b00000002L

.field public static final TRACKPAD_GESTURE_NOTIFICATION_ENABLED:J = 0x10b00000004L

.field public static final TRACKPAD_GESTURE_OVERVIEW_ENABLED:J = 0x10b00000003L

.field public static final TRACKPAD_GESTURE_QUICK_SWITCH_ENABLED:J = 0x10b00000005L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 854
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$TrackpadGesture;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
