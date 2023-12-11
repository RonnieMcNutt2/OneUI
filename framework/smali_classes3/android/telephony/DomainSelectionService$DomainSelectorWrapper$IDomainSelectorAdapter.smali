.class Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;
.super Lcom/android/internal/telephony/IDomainSelector$Stub;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDomainSelectorAdapter"
.end annotation


# instance fields
.field private final mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/DomainSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;


# direct methods
.method constructor <init>(Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;Landroid/telephony/DomainSelector;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "domainSelector"    # Landroid/telephony/DomainSelector;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 623
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDomainSelector$Stub;-><init>()V

    .line 624
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    .line 626
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 627
    return-void
.end method

.method static synthetic lambda$cancelSelection$0(Landroid/telephony/DomainSelector;)V
    .registers 1
    .param p0, "domainSelector"    # Landroid/telephony/DomainSelector;

    .line 635
    invoke-interface {p0}, Landroid/telephony/DomainSelector;->cancelSelection()V

    return-void
.end method

.method static synthetic lambda$finishSelection$2(Landroid/telephony/DomainSelector;)V
    .registers 1
    .param p0, "domainSelector"    # Landroid/telephony/DomainSelector;

    .line 653
    invoke-interface {p0}, Landroid/telephony/DomainSelector;->finishSelection()V

    return-void
.end method

.method static synthetic lambda$reselectDomain$1(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 2
    .param p0, "domainSelector"    # Landroid/telephony/DomainSelector;
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 644
    invoke-interface {p0, p1}, Landroid/telephony/DomainSelector;->reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    return-void
.end method


# virtual methods
.method public cancelSelection()V
    .registers 7

    .line 631
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DomainSelector;

    .line 632
    .local v0, "domainSelector":Landroid/telephony/DomainSelector;
    if-nez v0, :cond_b

    return-void

    .line 634
    :cond_b
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/DomainSelector;)V

    const-string v4, "DomainSelectorWrapper"

    const-string v5, "cancelSelection"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public finishSelection()V
    .registers 7

    .line 649
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DomainSelector;

    .line 650
    .local v0, "domainSelector":Landroid/telephony/DomainSelector;
    if-nez v0, :cond_b

    return-void

    .line 652
    :cond_b
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/DomainSelector;)V

    const-string v4, "DomainSelectorWrapper"

    const-string v5, "finishSelection"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 8
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 640
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DomainSelector;

    .line 641
    .local v0, "domainSelector":Landroid/telephony/DomainSelector;
    if-nez v0, :cond_b

    return-void

    .line 643
    :cond_b
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    const-string v4, "DomainSelectorWrapper"

    const-string/jumbo v5, "reselectDomain"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method
