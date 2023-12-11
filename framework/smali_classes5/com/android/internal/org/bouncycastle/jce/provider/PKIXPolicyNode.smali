.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected expectedPolicies:Ljava/util/Set;

.field protected parent:Ljava/security/cert/PolicyNode;

.field protected policyQualifiers:Ljava/util/Set;

.field protected validPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "_children"    # Ljava/util/List;
    .param p2, "_depth"    # I
    .param p3, "_expectedPolicies"    # Ljava/util/Set;
    .param p4, "_parent"    # Ljava/security/cert/PolicyNode;
    .param p5, "_policyQualifiers"    # Ljava/util/Set;
    .param p6, "_validPolicy"    # Ljava/lang/String;
    .param p7, "_critical"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    .line 41
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    .line 42
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 43
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 44
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    .line 45
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    .line 46
    iput-boolean p7, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 47
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3
    .param p1, "_child"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 54
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 13

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v0, "_expectedPolicies":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 144
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 147
    :cond_20
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v9, v2

    .line 148
    .local v9, "_policyQualifiers":Ljava/util/Set;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 149
    .end local v1    # "_iter":Ljava/util/Iterator;
    .local v10, "_iter":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 151
    new-instance v1, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 154
    :cond_41
    new-instance v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    move-object v1, v11

    move-object v4, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 162
    .local v1, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    .end local v10    # "_iter":Ljava/util/Iterator;
    .local v2, "_iter":Ljava/util/Iterator;
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 166
    .local v3, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 167
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 168
    .end local v3    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_60

    .line 170
    :cond_77
    return-object v1
.end method

.method public getChildren()Ljava/util/Iterator;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCritical()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return v0
.end method

.method public removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3
    .param p1, "_child"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public setCritical(Z)V
    .registers 2
    .param p1, "_critical"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 104
    return-void
.end method

.method public setExpectedPolicies(Ljava/util/Set;)V
    .registers 2
    .param p1, "expectedPolicies"    # Ljava/util/Set;

    .line 175
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 176
    return-void
.end method

.method public setParent(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 2
    .param p1, "_parent"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "_indent"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, "_buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 125
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 128
    .end local v1    # "i":I
    :cond_40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
