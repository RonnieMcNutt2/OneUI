.class Landroid/telephony/SmsManager$6;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/SmsManager;

    .line 1753
    iput-object p1, p0, Landroid/telephony/SmsManager$6;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$6;->val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5
    .param p1, "subId"    # I

    .line 1757
    iget-object v0, p0, Landroid/telephony/SmsManager$6;->this$0:Landroid/telephony/SmsManager;

    iget-object v1, p0, Landroid/telephony/SmsManager$6;->val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/telephony/SmsManager;->-$$Nest$msendResolverResult(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1758
    return-void
.end method
