.class public final synthetic Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/content/pm/PackageParser$Service;

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->lambda$getServiceInfoList$0(Ljava/util/List;Landroid/content/pm/PackageParser$Service;)V

    return-void
.end method
