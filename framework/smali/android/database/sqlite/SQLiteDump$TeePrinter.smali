.class public Landroid/database/sqlite/SQLiteDump$TeePrinter;
.super Ljava/lang/Object;
.source "SQLiteDump.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeePrinter"
.end annotation


# instance fields
.field p1:Landroid/util/Printer;

.field p2:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Landroid/util/Printer;Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "printer1"    # Landroid/util/Printer;
    .param p2, "printer2"    # Ljava/io/PrintStream;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p1:Landroid/util/Printer;

    .line 230
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p2:Ljava/io/PrintStream;

    .line 231
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "x"    # Ljava/lang/String;

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p1:Landroid/util/Printer;

    if-eqz v0, :cond_7

    .line 236
    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 238
    :cond_7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p2:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 243
    :cond_e
    goto :goto_10

    .line 241
    :catch_f
    move-exception v0

    .line 244
    :goto_10
    return-void
.end method
