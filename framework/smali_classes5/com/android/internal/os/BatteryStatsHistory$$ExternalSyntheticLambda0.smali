.class public final synthetic Lcom/android/internal/os/BatteryStatsHistory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->lambda$new$0(Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
