.class Landroid/graphics/GraphicsStatsService$1;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor <init>(Landroid/graphics/GraphicsStatsService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/graphics/GraphicsStatsService;

    .line 117
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    goto :goto_16

    .line 125
    :pswitch_6
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$mdeleteOldBuffers(Landroid/graphics/GraphicsStatsService;)V

    goto :goto_16

    .line 122
    :pswitch_c
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-static {v0, v1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$msaveBuffer(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V

    .line 123
    nop

    .line 128
    :goto_16
    const/4 v0, 0x1

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
