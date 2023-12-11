.class Landroid/telephony/mbms/InternalGroupCallCallback$2;
.super Ljava/lang/Object;
.source "InternalGroupCallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallCallback;->onGroupCallStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

.field final synthetic val$reason:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalGroupCallCallback;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalGroupCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->val$state:I

    iput p3, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 65
    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallCallback;)Landroid/telephony/mbms/GroupCallCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->val$state:I

    iget v2, p0, Landroid/telephony/mbms/InternalGroupCallCallback$2;->val$reason:I

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/GroupCallCallback;->onGroupCallStateChanged(II)V

    .line 66
    return-void
.end method
