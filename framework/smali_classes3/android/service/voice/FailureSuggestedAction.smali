.class public final Landroid/service/voice/FailureSuggestedAction;
.super Ljava/lang/Object;
.source "FailureSuggestedAction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/FailureSuggestedAction$FailureSuggestedActionDef;
    }
.end annotation


# static fields
.field public static final DISABLE_DETECTION:I = 0x2

.field public static final NONE:I = 0x1

.field public static final RECREATE_DETECTOR:I = 0x3

.field public static final RESTART_RECOGNITION:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
