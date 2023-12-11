.class public final synthetic Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/AppLocaleCollector;->lambda$getIgnoredLocaleList$4(Ljava/util/HashSet;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
