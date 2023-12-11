.class public final Landroid/os/AppBackgroundRestrictionsInfo$BindServiceEventsTrackerInfo;
.super Ljava/lang/Object;
.source "AppBackgroundRestrictionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBackgroundRestrictionsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BindServiceEventsTrackerInfo"
.end annotation


# static fields
.field public static final BIND_SERVICE_REQUESTS:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/os/AppBackgroundRestrictionsInfo;


# direct methods
.method public constructor <init>(Landroid/os/AppBackgroundRestrictionsInfo;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/AppBackgroundRestrictionsInfo;

    .line 158
    iput-object p1, p0, Landroid/os/AppBackgroundRestrictionsInfo$BindServiceEventsTrackerInfo;->this$0:Landroid/os/AppBackgroundRestrictionsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
