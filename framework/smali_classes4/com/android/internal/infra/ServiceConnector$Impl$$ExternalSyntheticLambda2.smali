.class public final synthetic Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

.field public final synthetic f$1:Lcom/android/internal/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    iput-object p2, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/infra/ServiceConnector$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-static {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->$r8$lambda$Mo9vzDr5yLg0PRP75hvfZsE7Pkg(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method
