.class Landroid/database/sqlite/SQLiteDump$1;
.super Ljava/lang/Object;
.source "SQLiteDump.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteDump;->deleteOldDumpFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteDump;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDump;)V
    .registers 2
    .param p1, "this$0"    # Landroid/database/sqlite/SQLiteDump;

    .line 205
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDump$1;->this$0:Landroid/database/sqlite/SQLiteDump;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 208
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    const/4 v2, 0x1

    goto :goto_18

    :cond_11
    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    const/4 v2, -0x1

    :goto_18
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 205
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDump$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    return v0
.end method
