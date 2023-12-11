.class public final Landroid/service/notification/ZenPolicy$Builder;
.super Ljava/lang/Object;
.source "ZenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mZenPolicy:Landroid/service/notification/ZenPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 475
    return-void
.end method

.method public constructor <init>(Landroid/service/notification/ZenPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    if-eqz p1, :cond_c

    .line 482
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_13

    .line 484
    :cond_c
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 486
    :goto_13
    return-void
.end method


# virtual methods
.method public allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 684
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 685
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 684
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-object p0
.end method

.method public allowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 500
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 503
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 504
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 505
    return-object p0
.end method

.method public allowAppsToBypassDnd(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;
    .registers 6
    .param p1, "appList"    # Ljava/lang/String;

    .line 744
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 746
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 748
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsAppBypassDndOverridden(Landroid/service/notification/ZenPolicy;Z)V

    .line 749
    return-object p0
.end method

.method public allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 650
    const/4 v0, 0x3

    if-nez p1, :cond_8

    .line 651
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 654
    :cond_8
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1a

    .line 655
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 656
    :cond_1a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v2, :cond_23

    if-ne p1, v0, :cond_22

    goto :goto_23

    .line 660
    :cond_22
    return-object p0

    .line 658
    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 663
    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 664
    return-object p0
.end method

.method public allowCategory(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3
    .param p1, "category"    # I
    .param p2, "allow"    # Z

    .line 715
    packed-switch p1, :pswitch_data_1e

    :pswitch_3
    goto :goto_1c

    .line 723
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 724
    goto :goto_1c

    .line 720
    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 721
    goto :goto_1c

    .line 717
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 718
    goto :goto_1c

    .line 732
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_1c

    .line 729
    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 730
    goto :goto_1c

    .line 726
    :pswitch_18
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 727
    nop

    .line 735
    :goto_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 602
    const/16 v0, 0x8

    if-nez p1, :cond_9

    .line 603
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 606
    :cond_9
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1b

    .line 607
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 608
    :cond_1b
    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    if-ne p1, v2, :cond_21

    goto :goto_22

    .line 612
    :cond_21
    return-object p0

    .line 610
    :cond_22
    :goto_22
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 615
    :goto_2f
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 616
    return-object p0
.end method

.method public allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 589
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 590
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 589
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-object p0
.end method

.method public allowExceptionContacts(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;
    .registers 6
    .param p1, "appList"    # Ljava/lang/String;

    .line 756
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 758
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmExceptionContacts(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 760
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsContactsOverridden(Landroid/service/notification/ZenPolicy;Z)V

    .line 761
    return-object p0
.end method

.method public allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 695
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 696
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 695
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-object p0
.end method

.method public allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 626
    const/4 v0, 0x2

    if-nez p1, :cond_8

    .line 627
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 630
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    .line 631
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 632
    :cond_19
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_22

    goto :goto_23

    .line 636
    :cond_22
    return-object p0

    .line 634
    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 639
    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 640
    return-object p0
.end method

.method public allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 579
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 580
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-object p0
.end method

.method public allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 673
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 674
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 673
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-object p0
.end method

.method public allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 705
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 705
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-object p0
.end method

.method public build()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    return-object v0
.end method

.method public disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 517
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 520
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 521
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 522
    return-object p0
.end method

.method public hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 540
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    .end local v0    # "i":I
    :cond_1e
    return-object p0
.end method

.method public showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 530
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_1e
    return-object p0
.end method

.method public showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 809
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 810
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 809
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 811
    return-object p0
.end method

.method public showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 770
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 771
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 770
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-object p0
.end method

.method public showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 819
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 820
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 819
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 821
    return-object p0
.end method

.method public showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 830
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 831
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 830
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    return-object p0
.end method

.method public showLights(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 780
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 781
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 780
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-object p0
.end method

.method public showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 789
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 790
    const/4 v1, 0x2

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 789
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 791
    return-object p0
.end method

.method public showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 799
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 800
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 799
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 801
    return-object p0
.end method

.method public showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3
    .param p1, "effect"    # I
    .param p2, "show"    # Z

    .line 841
    packed-switch p1, :pswitch_data_22

    goto :goto_20

    .line 861
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    .line 858
    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 859
    goto :goto_20

    .line 855
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 856
    goto :goto_20

    .line 852
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 853
    goto :goto_20

    .line 849
    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 850
    goto :goto_20

    .line 846
    :pswitch_18
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 847
    goto :goto_20

    .line 843
    :pswitch_1c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 844
    nop

    .line 864
    :goto_20
    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "category"    # I

    .line 551
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 554
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_29

    .line 555
    :cond_17
    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    .line 556
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_29

    .line 557
    :cond_20
    const/16 v0, 0x8

    if-ne p1, v0, :cond_29

    .line 558
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 561
    :cond_29
    :goto_29
    return-object p0
.end method

.method public unsetVisualEffect(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 4
    .param p1, "effect"    # I

    .line 570
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-object p0
.end method
