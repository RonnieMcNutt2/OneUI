.class public final synthetic Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->lambda$getInfo$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;)Z

    move-result p1

    return p1
.end method
