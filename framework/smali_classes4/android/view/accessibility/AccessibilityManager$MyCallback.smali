.class final Landroid/view/accessibility/AccessibilityManager$MyCallback;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallback"
.end annotation


# static fields
.field public static final MSG_SET_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    .line 2777
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 2782
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_19

    .line 2785
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2786
    .local v0, "state":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2787
    :try_start_f
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$msetStateLocked(Landroid/view/accessibility/AccessibilityManager;I)V

    .line 2788
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v2

    .line 2791
    .end local v0    # "state":I
    :goto_19
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
