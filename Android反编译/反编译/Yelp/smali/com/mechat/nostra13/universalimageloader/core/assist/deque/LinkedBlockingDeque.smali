.class public Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/assist/deque/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,
        Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;,
        Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;,
        Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/BlockingDeque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 149
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 130
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 133
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 150
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 166
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 167
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 176
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    return-void

    .line 169
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 170
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_2

    .line 171
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    .line 176
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    throw v2

    .line 172
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    :cond_2
    :try_start_2
    new-instance v3, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v3, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Deque full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private linkFirst(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 191
    .local v0, f:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 192
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 193
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 197
    :goto_1
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 198
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 199
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iput-object p1, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private linkLast(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 218
    :goto_0
    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 210
    .local v0, l:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 211
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 212
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 213
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 216
    :goto_1
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 217
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 218
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iput-object p1, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1156
    const/4 v1, 0x0

    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 1157
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1158
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1162
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1163
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 1167
    return-void

    .line 1165
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 227
    .local v0, f:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 240
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v2, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 230
    .local v2, n:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 231
    .local v1, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 232
    iput-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 233
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 234
    if-nez v2, :cond_1

    .line 235
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 238
    :goto_1
    iget v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 239
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 237
    :cond_1
    iput-object v3, v2, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 249
    .local v1, l:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 262
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v2, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 252
    .local v2, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 253
    .local v0, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 254
    iput-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 255
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 256
    if-nez v2, :cond_1

    .line 257
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 260
    :goto_1
    iget v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 261
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 259
    :cond_1
    iput-object v3, v2, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1134
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1137
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1139
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 1142
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1146
    return-void

    .line 1140
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1139
    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1143
    .end local v1           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 1144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1145
    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 957
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 958
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v0, f:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 967
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 968
    const/4 v3, 0x0

    iput v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 969
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    return-void

    .line 961
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 962
    iget-object v2, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 963
    .local v2, n:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 964
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    move-object v0, v2

    goto :goto_0

    .line 970
    .end local v0           #f:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    .end local v2           #n:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v3

    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 972
    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 792
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return v2

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 794
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 797
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 798
    const/4 v2, 0x1

    goto :goto_0

    .line 796
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 800
    .end local v1           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 802
    throw v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 714
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 715
    :cond_0
    if-ne p1, p0, :cond_1

    .line 716
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 718
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    :try_start_0
    iget v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 721
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 727
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 725
    return v2

    .line 722
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v3, v3, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v3

    .line 727
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 728
    throw v3
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 523
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 532
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 312
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 313
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 314
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 316
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    return v2

    .line 317
    :catchall_0
    move-exception v2

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 378
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 379
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 380
    .local v2, nanos:J
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 381
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 383
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 388
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 384
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 385
    const/4 v4, 0x0

    goto :goto_1

    .line 386
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v4

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 327
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 328
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 329
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 331
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    return v2

    .line 332
    :catchall_0
    move-exception v2

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 400
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 401
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 402
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 403
    .local v2, nanos:J
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 404
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 406
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 411
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 407
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    const/4 v4, 0x0

    goto :goto_1

    .line 409
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v4

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 537
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 541
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v1

    .line 541
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 542
    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 547
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 551
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 549
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v1

    .line 551
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    return-object v1

    .line 440
    :catchall_0
    move-exception v1

    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 442
    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 484
    .local v2, nanos:J
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 488
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v1

    .line 489
    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    const/4 v1, 0x0

    goto :goto_1

    .line 491
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 494
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 447
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 449
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 451
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 449
    return-object v1

    .line 450
    :catchall_0
    move-exception v1

    .line 451
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 501
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 502
    .local v2, nanos:J
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 503
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 506
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v1

    .line 507
    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 513
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    const/4 v1, 0x0

    goto :goto_1

    .line 509
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 512
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    .line 513
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 514
    throw v4
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 619
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 343
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 344
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 345
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 352
    return-void

    .line 348
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v2

    .line 350
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    throw v2
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 360
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 361
    .local v1, node:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 369
    return-void

    .line 365
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v2

    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 368
    throw v2
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 687
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 688
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 690
    :try_start_0
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 692
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 690
    return v1

    .line 691
    :catchall_0
    move-exception v1

    .line 692
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 693
    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 765
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 423
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 556
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return v2

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 558
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 561
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    invoke-virtual {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    const/4 v2, 0x1

    goto :goto_0

    .line 560
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 567
    .end local v1           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 431
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 432
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 573
    if-nez p1, :cond_0

    .line 583
    :goto_0
    return v2

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 575
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 585
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 578
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 579
    invoke-virtual {p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 580
    const/4 v2, 0x1

    goto :goto_0

    .line 577
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 584
    .end local v1           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 585
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 586
    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 774
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 775
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 777
    :try_start_0
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 777
    return v1

    .line 778
    :catchall_0
    move-exception v1

    .line 779
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 457
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 460
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 462
    return-object v1

    .line 461
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 463
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 465
    throw v2
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 469
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 470
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    return-object v1

    .line 474
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    .line 477
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 478
    throw v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 860
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 861
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 863
    :try_start_0
    iget v5, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 864
    .local v0, a:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 865
    .local v1, k:I
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_0
    if-nez v4, :cond_0

    .line 869
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 867
    return-object v0

    .line 866
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    :try_start_1
    iget-object v5, v4, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 865
    iget-object v4, v4, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_0

    .line 868
    .end local v0           #a:[Ljava/lang/Object;
    .end local v2           #k:I
    .end local v4           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    .line 869
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 870
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 914
    :try_start_0
    array-length v5, p1

    iget v6, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    if-ge v5, v6, :cond_0

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 915
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 918
    :cond_0
    const/4 v1, 0x0

    .line 919
    .local v1, k:I
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v4, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_0
    if-nez v4, :cond_2

    .line 921
    array-length v5, p1

    if-le v5, v2, :cond_1

    .line 922
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 923
    return-object p1

    .line 920
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    :try_start_1
    iget-object v5, v4, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 919
    iget-object v4, v4, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_0

    .line 924
    .end local v2           #k:I
    .end local v4           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    .line 925
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 926
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 930
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 931
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .local v2, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_0

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 935
    const-string v4, "[]"

    .line 944
    :goto_0
    return-object v4

    .line 937
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v3, sb:Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    :goto_1
    iget-object v0, v2, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 941
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    iget-object v2, v2, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 943
    if-nez v2, :cond_2

    .line 944
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 945
    :cond_2
    const/16 v4, 0x2c

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 947
    .end local v2           #p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 949
    throw v4
.end method

.method unlink(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, this:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, x:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 271
    .local v1, p:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 272
    .local v0, n:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 285
    :goto_0
    return-void

    .line 274
    :cond_0
    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_1
    iput-object v0, v1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 278
    iput-object v1, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 279
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 282
    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 283
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method
