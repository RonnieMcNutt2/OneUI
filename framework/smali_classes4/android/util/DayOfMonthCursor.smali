.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "weekStartDay"    # I

    .line 49
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 50
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 51
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 52
    return-void
.end method


# virtual methods
.method public down()Z
    .registers 4

    .line 121
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 123
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 124
    return v2

    .line 127
    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 128
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 129
    :goto_18
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 130
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_18

    .line 132
    :cond_28
    return v1
.end method

.method public getSelectedColumn()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .registers 3

    .line 69
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .registers 3

    .line 77
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_c
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    .line 81
    const/4 v0, -0x1

    return v0

    .line 83
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public getSelectedRow()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 92
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public left()Z
    .registers 4

    .line 141
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 142
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 143
    const/4 v0, 0x6

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_11

    .line 145
    :cond_e
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 148
    :goto_11
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 149
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_1d
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    .line 154
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 155
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 156
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 157
    return v1
.end method

.method public right()Z
    .registers 5

    .line 166
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    .line 167
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 168
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_12

    .line 170
    :cond_f
    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 173
    :goto_12
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 174
    return v2

    .line 178
    :cond_1d
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 179
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 180
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 181
    :goto_24
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_34

    .line 182
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_24

    .line 184
    :cond_34
    return v3
.end method

.method public setSelectedDayOfMonth(I)V
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 87
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 88
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 89
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 64
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 65
    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 66
    return-void
.end method

.method public up()Z
    .registers 4

    .line 101
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 103
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 104
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 109
    :goto_19
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 110
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_19

    .line 112
    :cond_29
    return v1
.end method
