.class public final Landroid/os/BatteryUsageStatsAtomsProto$PowerComponentModel;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerComponentModel"
.end annotation


# static fields
.field public static final COMPONENT:J = 0x10500000001L

.field public static final MEASURED_ENERGY:I = 0x2

.field public static final POWER_MODEL:J = 0x10e00000002L

.field public static final POWER_PROFILE:I = 0x1

.field public static final UNDEFINED:I


# instance fields
.field final synthetic this$0:Landroid/os/BatteryUsageStatsAtomsProto;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStatsAtomsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/BatteryUsageStatsAtomsProto;

    .line 74
    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$PowerComponentModel;->this$0:Landroid/os/BatteryUsageStatsAtomsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
