.class public final synthetic Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/app/LocaleStore;->lambda$isShallIgnore$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
