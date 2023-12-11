.class public final Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
.super Landroid/view/ViewStructure;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewStructureImpl"
.end annotation


# instance fields
.field final mNode:Landroid/view/contentcapture/ViewNode;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 661
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 657
    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 662
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 664
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_29

    .line 665
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 667
    :cond_29
    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;JI)V
    .registers 7
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J
    .param p4, "sessionId"    # I

    .line 671
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 657
    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 672
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 673
    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 674
    return-void
.end method

.method private getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .registers 3

    .line 1009
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1010
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0

    .line 1012
    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    invoke-direct {v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmText(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)V

    .line 1013
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addChildCount(I)I
    .registers 4
    .param p1, "num"    # I

    .line 887
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public asyncCommit()V
    .registers 3

    .line 978
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncCommit() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method public asyncNewChild(I)Landroid/view/ViewStructure;
    .registers 4
    .param p1, "index"    # I

    .line 905
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncNewChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 911
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmAutofillId(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 3

    .line 893
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .line 868
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 869
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 871
    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmExtras(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)V

    .line 872
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    .line 863
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Landroid/view/contentcapture/ViewNode;
    .registers 2

    .line 679
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public getTempRect()Landroid/graphics/Rect;
    .registers 3

    .line 983
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTempRect() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 848
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    .line 858
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionStart()I

    move-result v0

    return v0
.end method

.method public hasExtras()Z
    .registers 2

    .line 877
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public newChild(I)Landroid/view/ViewStructure;
    .registers 4
    .param p1, "index"    # I

    .line 899
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    return-object v0
.end method

.method public newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;

    .line 999
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newHtmlInfoBuilder() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccessibilityFocused(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 761
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x20001

    and-long/2addr v1, v3

    .line 762
    if-eqz p1, :cond_10

    const-wide/32 v3, 0x20000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 763
    return-void
.end method

.method public setActivated(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 782
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x200001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x200000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 783
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 712
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAlpha() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method public setAssistBlocked(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 723
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x401

    and-long/2addr v1, v3

    .line 724
    if-eqz p1, :cond_e

    const-wide/16 v3, 0x400

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 725
    return-void
.end method

.method public setAutofillHints([Ljava/lang/String;)V
    .registers 3
    .param p1, "hints"    # [Ljava/lang/String;

    .line 938
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillHints(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 916
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 917
    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .registers 5
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # I

    .line 922
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 923
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 924
    return-void
.end method

.method public setAutofillOptions([Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "options"    # [Ljava/lang/CharSequence;

    .line 948
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillOptions(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)V

    .line 949
    return-void
.end method

.method public setAutofillType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 928
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillType(Landroid/view/contentcapture/ViewNode;I)V

    .line 929
    return-void
.end method

.method public setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 943
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillValue(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)V

    .line 944
    return-void
.end method

.method public setCheckable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 767
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x40001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x40000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 768
    return-void
.end method

.method public setChecked(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 772
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x80001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x80000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 773
    return-void
.end method

.method public setChildCount(I)V
    .registers 4
    .param p1, "num"    # I

    .line 882
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmClassName(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public setClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 734
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x1000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 735
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 797
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmContentDescription(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)V

    .line 798
    return-void
.end method

.method public setContextClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 745
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x4001

    and-long/2addr v1, v3

    .line 746
    if-eqz p1, :cond_e

    const-wide/16 v3, 0x4000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 747
    return-void
.end method

.method public setDataIsSensitive(Z)V
    .registers 4
    .param p1, "sensitive"    # Z

    .line 973
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDataIsSensitive() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method public setDimens(IIIIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 692
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmX(Landroid/view/contentcapture/ViewNode;I)V

    .line 693
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmY(Landroid/view/contentcapture/ViewNode;I)V

    .line 694
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollX(Landroid/view/contentcapture/ViewNode;I)V

    .line 695
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollY(Landroid/view/contentcapture/ViewNode;I)V

    .line 696
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p5}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmWidth(Landroid/view/contentcapture/ViewNode;I)V

    .line 697
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p6}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHeight(Landroid/view/contentcapture/ViewNode;I)V

    .line 698
    return-void
.end method

.method public setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .line 707
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setElevation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public setEnabled(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 729
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x801

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x0

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x800

    :goto_10
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 730
    return-void
.end method

.method public setFocusable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 751
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x8001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x8000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 752
    return-void
.end method

.method public setFocused(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 756
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x10001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x10000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 757
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 838
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public setHintIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHintIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method public setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .registers 4
    .param p1, "htmlInfo"    # Landroid/view/ViewStructure$HtmlInfo;

    .line 1005
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setHtmlInfo() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmId(Landroid/view/contentcapture/ViewNode;I)V

    .line 685
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdPackage(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdType(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .line 953
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmInputType(Landroid/view/contentcapture/ViewNode;I)V

    .line 954
    return-void
.end method

.method public setLocaleList(Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 994
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmLocaleList(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)V

    .line 995
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 739
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x2001

    and-long/2addr v1, v3

    .line 740
    if-eqz p1, :cond_e

    const-wide/16 v3, 0x2000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 741
    return-void
.end method

.method public setMaxTextEms(I)V
    .registers 3
    .param p1, "maxEms"    # I

    .line 963
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxEms(Landroid/view/contentcapture/ViewNode;I)V

    .line 964
    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .line 968
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxLength(Landroid/view/contentcapture/ViewNode;I)V

    .line 969
    return-void
.end method

.method public setMinTextEms(I)V
    .registers 3
    .param p1, "minEms"    # I

    .line 958
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMinEms(Landroid/view/contentcapture/ViewNode;I)V

    .line 959
    return-void
.end method

.method public setOpaque(Z)V
    .registers 7
    .param p1, "opaque"    # Z

    .line 787
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x400001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x400000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 788
    return-void
.end method

.method public setReceiveContentMimeTypes([Ljava/lang/String;)V
    .registers 3
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 933
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmReceiveContentMimeTypes(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public setSelected(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 777
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x100001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x100000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 778
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 802
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 803
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 804
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    .line 805
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .line 809
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 810
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 811
    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    .line 812
    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    .line 813
    return-void
.end method

.method public setTextIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 833
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmTextIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public setTextLines([I[I)V
    .registers 4
    .param p1, "charOffsets"    # [I
    .param p2, "baselines"    # [I

    .line 826
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 827
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    iput-object p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    .line 828
    iput-object p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    .line 829
    return-void
.end method

.method public setTextStyle(FIII)V
    .registers 6
    .param p1, "size"    # F
    .param p2, "fgColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "style"    # I

    .line 817
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 818
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    .line 819
    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    .line 820
    iput p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    .line 821
    iput p4, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    .line 822
    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 702
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTransformation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method public setVisibility(I)V
    .registers 9
    .param p1, "visibility"    # I

    .line 717
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0xd

    and-long/2addr v1, v3

    int-to-long v3, p1

    const-wide/16 v5, 0xc

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 719
    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 989
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setWebDomain() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method
