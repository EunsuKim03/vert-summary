; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
%runtime._string = type { ptr, i64 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@"internal/task.activeTasks" = internal unnamed_addr global ptr @"internal/task.mainTask", align 8, !dbg !0
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !50
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !52
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !58
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !61
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !65
@"internal/task.otherGoroutines" = internal unnamed_addr global i32 0, align 4, !dbg !70
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !72
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !77
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !83
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !85
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !93
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !100
@"runtime$string.7" = internal unnamed_addr constant [17 x i8] c"gc: out of memory", align 1, !dbg !103
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !105
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !111
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !116
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !121
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !126
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !131
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !134
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !137
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !139
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !141
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !143
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !145
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #0

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #1 !dbg !1735 {
entry:
    #dbg_value(ptr %m, !1740, !DIExpression(), !1742)
    #dbg_value(ptr %m, !1740, !DIExpression(), !1743)
  %0 = icmp eq ptr %m, null, !dbg !1744
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1744

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1745, !DIExpression(), !1753)
    #dbg_value(i32 0, !1752, !DIExpression(), !1753)
    #dbg_value(ptr %m, !1745, !DIExpression(), !1755)
    #dbg_value(i32 0, !1752, !DIExpression(), !1756)
    #dbg_value(ptr %m, !1757, !DIExpression(), !1765)
    #dbg_value(i32 0, !1764, !DIExpression(), !1765)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1765
    #dbg_value(i32 %1, !1741, !DIExpression(), !1767)
    #dbg_value(i32 %1, !1741, !DIExpression(), !1768)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1769

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  call fastcc void @runtime._panic(), !dbg !1770
  unreachable, !dbg !1770

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1740, !DIExpression(), !1771)
    #dbg_value(ptr %m, !1772, !DIExpression(), !1779)
    #dbg_value(ptr %m, !1772, !DIExpression(), !1781)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #15, !dbg !1782
  br label %if.done, !dbg !1769

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1783

gep.throw:                                        ; preds = %entry
  call fastcc void @runtime.nilPanic(), !dbg !1744
  unreachable, !dbg !1744
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #0

declare ptr @tinygo_task_current() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #1 !dbg !1784 {
entry:
    #dbg_value(ptr %t, !1788, !DIExpression(), !1793)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1798)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1800)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !1808)
    #dbg_value(i32 0, !1806, !DIExpression(), !1808)
    #dbg_value(i32 1, !1807, !DIExpression(), !1808)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !1810)
    #dbg_value(i32 0, !1806, !DIExpression(), !1811)
    #dbg_value(i32 1, !1807, !DIExpression(), !1812)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1813, !DIExpression(), !1820)
    #dbg_value(i32 0, !1818, !DIExpression(), !1820)
    #dbg_value(i32 1, !1819, !DIExpression(), !1820)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1820
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1820
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !1822

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1823)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1824)
    #dbg_value(i32 2, !1752, !DIExpression(), !1824)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1826)
    #dbg_value(i32 2, !1752, !DIExpression(), !1827)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1828)
    #dbg_value(i32 2, !1764, !DIExpression(), !1828)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1828
  %.not4.i = icmp eq i32 %2, 0, !dbg !1830
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1822

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1831)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1832, !DIExpression(), !1838)
    #dbg_value(i32 2, !1837, !DIExpression(), !1840)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !1841
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1826)
    #dbg_value(i32 2, !1752, !DIExpression(), !1827)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1828)
    #dbg_value(i32 2, !1764, !DIExpression(), !1828)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1828
  %.not.i = icmp eq i32 %3, 0, !dbg !1830
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1822

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(i1 false, !1789, !DIExpression(), !1842)
    #dbg_value(ptr @"internal/task.activeTasks", !1790, !DIExpression(), !1843)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !1844
  %.not.not6 = icmp eq ptr %4, null, !dbg !1845
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !1846

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !1847
    #dbg_value(ptr %5, !1790, !DIExpression(), !1848)
    #dbg_value(ptr %5, !1790, !DIExpression(), !1849)
  %6 = load ptr, ptr %5, align 8, !dbg !1844
  %.not.not = icmp eq ptr %6, null, !dbg !1845
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !1846

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1790, !DIExpression(), !1849)
    #dbg_value(ptr %8, !1790, !DIExpression(), !1850)
    #dbg_value(ptr %t, !1788, !DIExpression(), !1851)
  %9 = icmp eq ptr %7, %t, !dbg !1852
    #dbg_value(ptr %8, !1790, !DIExpression(), !1853)
    #dbg_value(ptr %7, !1790, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !1848)
  br i1 %9, label %store.next, label %for.loop, !dbg !1846

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1790, !DIExpression(), !1854)
    #dbg_value(ptr %t, !1788, !DIExpression(), !1855)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !1856
  %11 = load ptr, ptr %10, align 8, !dbg !1856
  store ptr %11, ptr %8, align 8, !dbg !1857
    #dbg_value(i1 true, !1789, !DIExpression(), !1858)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
  %13 = add i32 %12, -1, !dbg !1859
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
    #dbg_value(i32 %13, !1792, !DIExpression(), !1859)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1860)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1862)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1863)
    #dbg_value(i32 0, !1752, !DIExpression(), !1863)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1865)
    #dbg_value(i32 0, !1752, !DIExpression(), !1866)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1867)
    #dbg_value(i32 0, !1764, !DIExpression(), !1867)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1867
    #dbg_value(i32 %14, !1741, !DIExpression(), !1869)
    #dbg_value(i32 %14, !1741, !DIExpression(), !1870)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !1871

if.then.i:                                        ; preds = %store.next
  call fastcc void @runtime._panic(), !dbg !1872
  unreachable, !dbg !1872

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1873)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !1874)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !1876)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #15, !dbg !1877
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !1871

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1789, !DIExpression(), !1878)
  ret void, !dbg !1879

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
  %16 = add i32 %15, -1, !dbg !1859
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
    #dbg_value(i32 %13, !1792, !DIExpression(), !1859)
  call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !1880
    #dbg_value(i1 poison, !1789, !DIExpression(), !1878)
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !1881
  unreachable, !dbg !1846
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #0

declare void @tinygo_scanCurrentStack() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #1 !dbg !1882 {
entry:
    #dbg_value(i32 %sig, !1886, !DIExpression(), !1888)
  %0 = call ptr @tinygo_task_current() #15, !dbg !1889
    #dbg_value(ptr %0, !1893, !DIExpression(), !1895)
    #dbg_value(ptr %0, !1893, !DIExpression(), !1896)
  %1 = icmp eq ptr %0, null, !dbg !1897
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !1898

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !1899
  unreachable, !dbg !1898

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !1900)
  %2 = call ptr @llvm.stacksave.p0(), !dbg !1901
  %3 = ptrtoint ptr %2 to i64, !dbg !1904
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1905
  store i64 %3, ptr %4, align 8, !dbg !1905
    #dbg_value(i64 %3, !1887, !DIExpression(), !1905)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1912)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1914)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1919)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1919)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1921)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1922)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !1927)
    #dbg_value(i32 -1, !1926, !DIExpression(), !1927)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1927
  %6 = icmp eq i32 %5, 1, !dbg !1929
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !1930

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1931)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1935)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1937)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !1938
  br label %"(*internal/task.waitGroup).done.exit", !dbg !1930

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1944)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1946)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !1952)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1952
  %8 = icmp eq i32 %7, 1, !dbg !1954
  br i1 %8, label %for.body, label %for.done, !dbg !1955

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !1832, !DIExpression(), !1956)
    #dbg_value(i32 1, !1837, !DIExpression(), !1958)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #15, !dbg !1959
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1946)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !1952)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1952
  %10 = icmp eq i32 %9, 1, !dbg !1954
  br i1 %10, label %for.body, label %for.done, !dbg !1955

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1960)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1962)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1963)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1963)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1965)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1966)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !1967)
    #dbg_value(i32 -1, !1926, !DIExpression(), !1967)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1967
  %12 = icmp eq i32 %11, 1, !dbg !1969
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !1970

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1971)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1972)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1974)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !1975
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !1970

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !1976
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") uwtable(sync)
define internal fastcc noalias nonnull ptr @runtime.alloc(i64 range(i64 8, 25) %size, ptr readnone %layout) unnamed_addr #2 !dbg !1977 {
entry:
    #dbg_value(i64 %size, !1981, !DIExpression(), !1984)
    #dbg_value(ptr %layout, !1982, !DIExpression(), !1984)
    #dbg_value(i64 %size, !1981, !DIExpression(), !1985)
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1986)
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1988)
    #dbg_value(ptr @runtime.gcLock, !1801, !DIExpression(), !1989)
    #dbg_value(i32 0, !1806, !DIExpression(), !1989)
    #dbg_value(i32 1, !1807, !DIExpression(), !1989)
    #dbg_value(ptr @runtime.gcLock, !1801, !DIExpression(), !1991)
    #dbg_value(i32 0, !1806, !DIExpression(), !1992)
    #dbg_value(i32 1, !1807, !DIExpression(), !1993)
    #dbg_value(ptr @runtime.gcLock, !1813, !DIExpression(), !1994)
    #dbg_value(i32 0, !1818, !DIExpression(), !1994)
    #dbg_value(i32 1, !1819, !DIExpression(), !1994)
  %0 = cmpxchg ptr @runtime.gcLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1994
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1994
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !1996

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1997)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !1998)
    #dbg_value(i32 2, !1752, !DIExpression(), !1998)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2000)
    #dbg_value(i32 2, !1752, !DIExpression(), !2001)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2002)
    #dbg_value(i32 2, !1764, !DIExpression(), !2002)
  %2 = atomicrmw xchg ptr @runtime.gcLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2002
  %.not4.i = icmp eq i32 %2, 0, !dbg !2004
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1996

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !2005)
    #dbg_value(ptr @runtime.gcLock, !1832, !DIExpression(), !2006)
    #dbg_value(i32 2, !1837, !DIExpression(), !2008)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.gcLock, i32 2) #15, !dbg !2009
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2000)
    #dbg_value(i32 2, !1752, !DIExpression(), !2001)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2002)
    #dbg_value(i32 2, !1764, !DIExpression(), !2002)
  %3 = atomicrmw xchg ptr @runtime.gcLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2002
  %.not.i = icmp eq i32 %3, 0, !dbg !2004
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1996

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(ptr null, !1983, !DIExpression(), !2010)
    #dbg_value(ptr %layout, !1982, !DIExpression(), !2011)
  %4 = icmp eq ptr %layout, inttoptr (i64 3 to ptr), !dbg !2012
  br i1 %4, label %if.then1, label %if.else, !dbg !2013

common.ret:                                       ; preds = %"(*internal/task.Mutex).Unlock.exit"
  ret ptr %6, !dbg !2013

if.then1:                                         ; preds = %"(*internal/task.Mutex).Lock.exit"
    #dbg_value(i64 %size, !1981, !DIExpression(), !2014)
  %5 = call ptr @GC_malloc_atomic(i64 %size) #15, !dbg !2015
    #dbg_value(ptr %5, !1983, !DIExpression(), !2016)
    #dbg_value(ptr %5, !1983, !DIExpression(), !2017)
    #dbg_value(i64 %size, !1981, !DIExpression(), !2018)
    #dbg_value(ptr %5, !2019, !DIExpression(), !2025)
    #dbg_value(i64 %size, !2024, !DIExpression(), !2025)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 range(i64 8, 25) %size, i1 false), !dbg !2025
  br label %if.done2, !dbg !2013

if.done2:                                         ; preds = %if.else, %if.then1
  %6 = phi ptr [ %5, %if.then1 ], [ %13, %if.else ], !dbg !2010
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2027)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2037)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !2038)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2038
  %8 = icmp eq i32 %7, 0, !dbg !2040
  br i1 %8, label %runtime.gcResumeWorld.exit, label %if.done.i.i, !dbg !2041

if.done.i.i:                                      ; preds = %if.done2
  %9 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2042
    #dbg_value(i32 %9, !2031, !DIExpression(), !2042)
  store i32 %9, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2043
    #dbg_value(%"internal/task.Semaphore" poison, !2032, !DIExpression(), !2043)
    #dbg_value(ptr @"internal/task.gcState", !2044, !DIExpression(), !2048)
    #dbg_value(i32 0, !2047, !DIExpression(), !2048)
    #dbg_value(ptr @"internal/task.gcState", !2044, !DIExpression(), !2050)
    #dbg_value(i32 0, !2047, !DIExpression(), !2051)
    #dbg_value(ptr @"internal/task.gcState", !2052, !DIExpression(), !2056)
    #dbg_value(i32 0, !2055, !DIExpression(), !2056)
  store atomic i32 0, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2056
    #dbg_value(ptr @"internal/task.gcState", !1932, !DIExpression(), !2058)
    #dbg_value(ptr @"internal/task.gcState", !1932, !DIExpression(), !2060)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.gcState") #15, !dbg !2061
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2062)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2064)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2065)
    #dbg_value(i32 0, !1752, !DIExpression(), !2065)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2067)
    #dbg_value(i32 0, !1752, !DIExpression(), !2068)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2069)
    #dbg_value(i32 0, !1764, !DIExpression(), !2069)
  %10 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2069
    #dbg_value(i32 %10, !1741, !DIExpression(), !2071)
    #dbg_value(i32 %10, !1741, !DIExpression(), !2072)
  switch i32 %10, label %runtime.gcResumeWorld.exit [
    i32 0, label %if.then.i.i.i
    i32 2, label %gep.next5.i.i.i
  ], !dbg !2073

if.then.i.i.i:                                    ; preds = %if.done.i.i
  call fastcc void @runtime._panic(), !dbg !2074
  unreachable, !dbg !2074

gep.next5.i.i.i:                                  ; preds = %if.done.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2075)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !2076)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !2078)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #15, !dbg !2079
  br label %runtime.gcResumeWorld.exit, !dbg !2073

runtime.gcResumeWorld.exit:                       ; preds = %if.done2, %if.done.i.i, %gep.next5.i.i.i
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2080)
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2082)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2083)
    #dbg_value(i32 0, !1752, !DIExpression(), !2083)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2085)
    #dbg_value(i32 0, !1752, !DIExpression(), !2086)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2087)
    #dbg_value(i32 0, !1764, !DIExpression(), !2087)
  %11 = atomicrmw xchg ptr @runtime.gcLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2087
    #dbg_value(i32 %11, !1741, !DIExpression(), !2089)
    #dbg_value(i32 %11, !1741, !DIExpression(), !2090)
  switch i32 %11, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2091

if.then.i:                                        ; preds = %runtime.gcResumeWorld.exit
  call fastcc void @runtime._panic(), !dbg !2092
  unreachable, !dbg !2092

gep.next5.i:                                      ; preds = %runtime.gcResumeWorld.exit
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2093)
    #dbg_value(ptr @runtime.gcLock, !1772, !DIExpression(), !2094)
    #dbg_value(ptr @runtime.gcLock, !1772, !DIExpression(), !2096)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.gcLock) #15, !dbg !2097
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !2091

"(*internal/task.Mutex).Unlock.exit":             ; preds = %runtime.gcResumeWorld.exit, %gep.next5.i
    #dbg_value(ptr %6, !1983, !DIExpression(), !2098)
  %12 = icmp eq ptr %6, null, !dbg !2099
  br i1 %12, label %if.then3, label %common.ret, !dbg !2013

if.then3:                                         ; preds = %"(*internal/task.Mutex).Unlock.exit"
  call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.7", i64 17), !dbg !2100
  unreachable, !dbg !2013

if.else:                                          ; preds = %"(*internal/task.Mutex).Lock.exit"
    #dbg_value(i64 %size, !1981, !DIExpression(), !2101)
  %13 = call ptr @GC_malloc(i64 %size) #15, !dbg !2102
    #dbg_value(ptr %13, !1983, !DIExpression(), !2103)
  br label %if.done2, !dbg !2013
}

declare ptr @GC_malloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #3 !dbg !2104 {
entry:
    #dbg_value(ptr %msg.data, !2108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2109)
    #dbg_value(i64 %msg.len, !2108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2109)
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2110
    #dbg_value(%runtime._string poison, !2108, !DIExpression(), !2111)
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2112
  unreachable, !dbg !2113
}

declare ptr @GC_malloc(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #3 !dbg !2114 {
entry:
    #dbg_value(ptr %addr, !2118, !DIExpression(), !2120)
    #dbg_value(ptr %msg.data, !2119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2120)
    #dbg_value(i64 %msg.len, !2119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2120)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2121
    #dbg_value(ptr %addr, !2118, !DIExpression(), !2122)
  %0 = ptrtoint ptr %addr to i64, !dbg !2123
  %1 = add i64 %0, -5, !dbg !2124
  call fastcc void @runtime.printptr(i64 %1), !dbg !2125
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2126
    #dbg_value(%runtime._string poison, !2119, !DIExpression(), !2127)
  call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2128
  call fastcc void @runtime.printnl(), !dbg !2129
  call void @abort() #15, !dbg !2130
  unreachable, !dbg !2131
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #5 !dbg !2132 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2137
    #dbg_value(ptr %s.data, !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2144)
    #dbg_value(i64 %s.len, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2144)
    #dbg_value(i64 0, !2135, !DIExpression(), !2145)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2146)
  br label %for.body, !dbg !2147

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2135, !DIExpression(), !2148)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2149)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2150
  %2 = load i8, ptr %1, align 1, !dbg !2150
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2151
    #dbg_value(i8 %2, !2142, !DIExpression(), !2151)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2151
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2153
  %4 = add nuw nsw i64 %0, 1, !dbg !2154
    #dbg_value(i64 %4, !2135, !DIExpression(), !2155)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2156
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2147

for.done:                                         ; preds = %for.body
  ret void, !dbg !2157
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #5 !dbg !2158 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2165
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2167
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2169
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2171
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2173
    #dbg_value(i64 %ptr, !2162, !DIExpression(), !2176)
    #dbg_value(i64 %ptr, !2162, !DIExpression(), !2177)
  %0 = icmp eq i64 %ptr, 0, !dbg !2178
  br i1 %0, label %for.body.i, label %if.done, !dbg !2179

common.ret:                                       ; preds = %if.done2, %for.body.i
  ret void, !dbg !2179

for.body.i:                                       ; preds = %entry
    #dbg_value(i64 0, !2135, !DIExpression(), !2180)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2181)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2182
    #dbg_value(i8 110, !2142, !DIExpression(), !2182)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2182
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2184
    #dbg_value(i64 1, !2135, !DIExpression(), !2185)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2182
    #dbg_value(i8 105, !2142, !DIExpression(), !2182)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2182
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2184
    #dbg_value(i64 2, !2135, !DIExpression(), !2185)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2182
    #dbg_value(i8 108, !2142, !DIExpression(), !2182)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2182
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2184
    #dbg_value(i64 3, !2135, !DIExpression(), !2185)
  br label %common.ret, !dbg !2179

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2186
    #dbg_value(i8 48, !2142, !DIExpression(), !2187)
    #dbg_value(i8 48, !2142, !DIExpression(), !2186)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2186
    #dbg_value(i8 48, !2142, !DIExpression(), !2186)
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2190
    #dbg_value(i8 120, !2142, !DIExpression(), !2191)
    #dbg_value(i8 120, !2142, !DIExpression(), !2190)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2190
    #dbg_value(i8 120, !2142, !DIExpression(), !2190)
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #15, !dbg !2192
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2193
    #dbg_value(i64 0, !2163, !DIExpression(), !2194)
  br label %for.body, !dbg !2179

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2163, !DIExpression(), !2195)
    #dbg_value(i64 %7, !2162, !DIExpression(), !2196)
  %8 = lshr i64 %7, 60, !dbg !2197
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2198
    #dbg_value(i8 %9, !2164, !DIExpression(), !2199)
    #dbg_value(i8 %9, !2164, !DIExpression(), !2200)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2201
  br i1 %10, label %if.then1, label %if.else, !dbg !2179

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2164, !DIExpression(), !2202)
  %11 = or disjoint i8 %9, 48, !dbg !2203
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2204
    #dbg_value(i8 %11, !2142, !DIExpression(), !2205)
    #dbg_value(i8 %11, !2142, !DIExpression(), !2204)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2204
    #dbg_value(i8 %11, !2142, !DIExpression(), !2204)
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #15, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2207
  br label %if.done2, !dbg !2179

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2208
    #dbg_value(i64 %13, !2162, !DIExpression(), !2208)
  %14 = add nuw nsw i64 %6, 1, !dbg !2209
    #dbg_value(i64 %14, !2163, !DIExpression(), !2195)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2210
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2179

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2164, !DIExpression(), !2211)
  %15 = add nuw nsw i8 %9, 87, !dbg !2212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2213
    #dbg_value(i8 %15, !2142, !DIExpression(), !2214)
    #dbg_value(i8 %15, !2142, !DIExpression(), !2213)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2213
    #dbg_value(i8 %15, !2142, !DIExpression(), !2213)
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #15, !dbg !2215
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2216
  br label %if.done2, !dbg !2179
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #5 !dbg !2217 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2221
    #dbg_value(i8 10, !2142, !DIExpression(), !2222)
    #dbg_value(i8 10, !2142, !DIExpression(), !2221)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2221
    #dbg_value(i8 10, !2142, !DIExpression(), !2221)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #3 !dbg !2226 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2227
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2228
  unreachable, !dbg !2229
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #3 !dbg !2230 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2231
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2232
  unreachable, !dbg !2233
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #10 !dbg !2234 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2255)
    #dbg_value(ptr @"internal/task$pack", !2239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2255)
    #dbg_value(i8 1, !2240, !DIExpression(), !2255)
  %0 = call ptr @tinygo_task_current() #15, !dbg !2256
    #dbg_value(ptr %0, !1893, !DIExpression(), !2258)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2259)
  %1 = icmp eq ptr %0, null, !dbg !2260
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2261

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2262
  unreachable, !dbg !2261

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2263)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2264
  %3 = load ptr, ptr %2, align 8, !dbg !2264
    #dbg_value(ptr %3, !2241, !DIExpression(), !2265)
    #dbg_value(ptr %3, !2241, !DIExpression(), !2266)
  %.not = icmp eq ptr %3, null, !dbg !2267
  br i1 %.not, label %if.done5, label %store.next, !dbg !2268

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2241, !DIExpression(), !2269)
    #dbg_value({ ptr, ptr } poison, !2239, !DIExpression(), !2270)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2271
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2271
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2271
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2271
    #dbg_value({ ptr, ptr } poison, !2253, !DIExpression(), !2271)
    #dbg_value(ptr %3, !2241, !DIExpression(), !2272)
    #dbg_value(i8 1, !2240, !DIExpression(), !2273)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2274
  store i8 1, ptr %5, align 1, !dbg !2274
    #dbg_value(i8 1, !2254, !DIExpression(), !2274)
    #dbg_value(ptr %3, !2241, !DIExpression(), !2275)
  call void @tinygo_longjmp(ptr nonnull %3) #15, !dbg !2276
  br label %if.done5, !dbg !2268

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2240, !DIExpression(), !2277)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2278
    #dbg_value({ ptr, ptr } poison, !2239, !DIExpression(), !2279)
  call fastcc void @runtime.printitf(), !dbg !2280
  call fastcc void @runtime.printnl(), !dbg !2281
  call void @abort() #15, !dbg !2282
  unreachable, !dbg !2283
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #5 !dbg !2284 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2315
    #dbg_value(ptr @"reflect/types.type:basic:string", !2288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2318)
    #dbg_value(ptr @"internal/task$pack", !2288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2318)
    #dbg_value({ ptr, ptr } poison, !2288, !DIExpression(), !2319)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2310, !DIExpression(), !2320)
    #dbg_value(ptr @"internal/task$string", !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2321)
    #dbg_value(i64 30, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2321)
    #dbg_value(i64 0, !2135, !DIExpression(), !2322)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2323)
  br label %for.body.i, !dbg !2324

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2135, !DIExpression(), !2325)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2326)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2327
  %2 = load i8, ptr %1, align 1, !dbg !2327
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2328
    #dbg_value(i8 %2, !2142, !DIExpression(), !2328)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2328
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2330
  %4 = add nuw nsw i64 %0, 1, !dbg !2331
    #dbg_value(i64 %4, !2135, !DIExpression(), !2332)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2333
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2324

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2334
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #10 !dbg !2335 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2338)
    #dbg_value(ptr @"internal/task$pack", !2337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2338)
    #dbg_value({ ptr, ptr } poison, !2337, !DIExpression(), !2339)
  call fastcc void @runtime.panicOrGoexit(), !dbg !2340
  unreachable, !dbg !2341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #11 !dbg !2342 {
entry:
    #dbg_value(double %x, !2346, !DIExpression(), !2348)
    #dbg_value(double %y, !2347, !DIExpression(), !2348)
    #dbg_value(double %x, !2346, !DIExpression(), !2349)
    #dbg_value(double %y, !2347, !DIExpression(), !2350)
    #dbg_value(double %x, !2351, !DIExpression(), !2355)
    #dbg_value(double %y, !2354, !DIExpression(), !2355)
    #dbg_value(double %x, !2351, !DIExpression(), !2357)
    #dbg_value(double %y, !2354, !DIExpression(), !2358)
    #dbg_value(double %x, !2359, !DIExpression(), !2369)
    #dbg_value(double %y, !2364, !DIExpression(), !2369)
    #dbg_value(i64 9218868437227405313, !2365, !DIExpression(), !2369)
    #dbg_value(i64 9223372036854775807, !2366, !DIExpression(), !2369)
  %.cast.i.i = bitcast double %x to i64, !dbg !2371
    #dbg_value(i64 %.cast.i.i, !2367, !DIExpression(), !2372)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2373
    #dbg_value(i64 %.cast2.i.i, !2368, !DIExpression(), !2374)
    #dbg_value(i64 %.cast.i.i, !2367, !DIExpression(), !2375)
    #dbg_value(i64 9218868437227405313, !2365, !DIExpression(), !2376)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2377
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2378

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2368, !DIExpression(), !2379)
    #dbg_value(i64 9218868437227405313, !2365, !DIExpression(), !2380)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2381
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2378

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2367, !DIExpression(), !2382)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2383
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2378
    #dbg_value(i64 %.cast2.i.i, !2368, !DIExpression(), !2384)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2385
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2378
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2378
    #dbg_value(i64 %spec.select.i.i, !2367, !DIExpression(), !2386)
    #dbg_value(i64 %6, !2368, !DIExpression(), !2387)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2388
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2378
  br label %runtime.minimumFloat64.exit, !dbg !2378

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #11 !dbg !2390 {
entry:
    #dbg_value(float %x, !2394, !DIExpression(), !2396)
    #dbg_value(float %y, !2395, !DIExpression(), !2396)
    #dbg_value(float %x, !2394, !DIExpression(), !2397)
    #dbg_value(float %y, !2395, !DIExpression(), !2398)
    #dbg_value(float %x, !2399, !DIExpression(), !2403)
    #dbg_value(float %y, !2402, !DIExpression(), !2403)
    #dbg_value(float %x, !2399, !DIExpression(), !2405)
    #dbg_value(float %y, !2402, !DIExpression(), !2406)
    #dbg_value(float %x, !2407, !DIExpression(), !2417)
    #dbg_value(float %y, !2412, !DIExpression(), !2417)
    #dbg_value(i32 2139095041, !2413, !DIExpression(), !2417)
    #dbg_value(i32 2147483647, !2414, !DIExpression(), !2417)
  %.cast.i.i = bitcast float %x to i32, !dbg !2419
    #dbg_value(i32 %.cast.i.i, !2415, !DIExpression(), !2420)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2421
    #dbg_value(i32 %.cast2.i.i, !2416, !DIExpression(), !2422)
    #dbg_value(i32 %.cast.i.i, !2415, !DIExpression(), !2423)
    #dbg_value(i32 2139095041, !2413, !DIExpression(), !2424)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2425
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2426

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2416, !DIExpression(), !2427)
    #dbg_value(i32 2139095041, !2413, !DIExpression(), !2428)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2429
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2426

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2415, !DIExpression(), !2430)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2431
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2426
    #dbg_value(i32 %.cast2.i.i, !2416, !DIExpression(), !2432)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2433
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2426
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2426
    #dbg_value(i32 %spec.select.i.i, !2415, !DIExpression(), !2434)
    #dbg_value(i32 %6, !2416, !DIExpression(), !2435)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2436
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2426
  br label %runtime.minimumFloat32.exit, !dbg !2426

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2437
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #11 !dbg !2438 {
entry:
    #dbg_value(double %x, !2440, !DIExpression(), !2442)
    #dbg_value(double %y, !2441, !DIExpression(), !2442)
    #dbg_value(double %x, !2440, !DIExpression(), !2443)
    #dbg_value(double %y, !2441, !DIExpression(), !2444)
    #dbg_value(double %x, !2445, !DIExpression(), !2449)
    #dbg_value(double %y, !2448, !DIExpression(), !2449)
    #dbg_value(double %x, !2445, !DIExpression(), !2451)
    #dbg_value(double %y, !2448, !DIExpression(), !2452)
    #dbg_value(double %x, !2453, !DIExpression(), !2462)
    #dbg_value(double %y, !2456, !DIExpression(), !2462)
    #dbg_value(i64 9218868437227405313, !2457, !DIExpression(), !2462)
    #dbg_value(i64 9223372036854775807, !2458, !DIExpression(), !2462)
  %.cast.i.i = bitcast double %x to i64, !dbg !2464
    #dbg_value(i64 %.cast.i.i, !2459, !DIExpression(), !2465)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2466
    #dbg_value(i64 %.cast6.i.i, !2460, !DIExpression(), !2467)
    #dbg_value(i64 %.cast.i.i, !2459, !DIExpression(), !2468)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2469
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2470
    #dbg_value(i64 %.cast6.i.i, !2460, !DIExpression(), !2471)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2472
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2470
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2470
    #dbg_value(i64 9218868437227405313, !2457, !DIExpression(), !2473)
    #dbg_value(i64 -9218868437227405314, !2461, !DIExpression(), !2474)
    #dbg_value(i64 %spec.select.i.i, !2459, !DIExpression(), !2475)
    #dbg_value(i64 -9218868437227405314, !2461, !DIExpression(), !2476)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2477
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2470

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2460, !DIExpression(), !2478)
    #dbg_value(i64 -9218868437227405314, !2461, !DIExpression(), !2479)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2480
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2470

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2459, !DIExpression(), !2481)
    #dbg_value(i64 %4, !2460, !DIExpression(), !2482)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2483
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2470
  br label %runtime.maximumFloat64.exit, !dbg !2470

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #11 !dbg !2485 {
entry:
    #dbg_value(float %x, !2487, !DIExpression(), !2489)
    #dbg_value(float %y, !2488, !DIExpression(), !2489)
    #dbg_value(float %x, !2487, !DIExpression(), !2490)
    #dbg_value(float %y, !2488, !DIExpression(), !2491)
    #dbg_value(float %x, !2492, !DIExpression(), !2496)
    #dbg_value(float %y, !2495, !DIExpression(), !2496)
    #dbg_value(float %x, !2492, !DIExpression(), !2498)
    #dbg_value(float %y, !2495, !DIExpression(), !2499)
    #dbg_value(float %x, !2500, !DIExpression(), !2509)
    #dbg_value(float %y, !2503, !DIExpression(), !2509)
    #dbg_value(i32 2139095041, !2504, !DIExpression(), !2509)
    #dbg_value(i32 2147483647, !2505, !DIExpression(), !2509)
  %.cast.i.i = bitcast float %x to i32, !dbg !2511
    #dbg_value(i32 %.cast.i.i, !2506, !DIExpression(), !2512)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2513
    #dbg_value(i32 %.cast6.i.i, !2507, !DIExpression(), !2514)
    #dbg_value(i32 %.cast.i.i, !2506, !DIExpression(), !2515)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2516
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2517
    #dbg_value(i32 %.cast6.i.i, !2507, !DIExpression(), !2518)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2519
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2517
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2517
    #dbg_value(i32 2139095041, !2504, !DIExpression(), !2520)
    #dbg_value(i32 -2139095042, !2508, !DIExpression(), !2521)
    #dbg_value(i32 %spec.select.i.i, !2506, !DIExpression(), !2522)
    #dbg_value(i32 -2139095042, !2508, !DIExpression(), !2523)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2524
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2517

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2507, !DIExpression(), !2525)
    #dbg_value(i32 -2139095042, !2508, !DIExpression(), !2526)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2527
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2517

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2506, !DIExpression(), !2528)
    #dbg_value(i32 %4, !2507, !DIExpression(), !2529)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2530
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2517
  br label %runtime.maximumFloat32.exit, !dbg !2517

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2531
}

declare void @GC_init() local_unnamed_addr #0

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #1 !dbg !2532 {
entry:
  %0 = call ptr @tinygo_task_current() #15, !dbg !2533
    #dbg_value(ptr %0, !1893, !DIExpression(), !2546)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2547)
  %1 = icmp eq ptr %0, null, !dbg !2548
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2549

if.then.i.i.i:                                    ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2550
  unreachable, !dbg !2549

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2551)
    #dbg_value(ptr %0, !2537, !DIExpression(), !2552)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2553)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2555)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !2556)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2556
  %3 = icmp eq i32 %2, 0, !dbg !2558
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2559

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2560)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2562)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2563)
    #dbg_value(i32 0, !1806, !DIExpression(), !2563)
    #dbg_value(i32 1, !1807, !DIExpression(), !2563)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2565)
    #dbg_value(i32 0, !1806, !DIExpression(), !2566)
    #dbg_value(i32 1, !1807, !DIExpression(), !2567)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1813, !DIExpression(), !2568)
    #dbg_value(i32 0, !1818, !DIExpression(), !2568)
    #dbg_value(i32 1, !1819, !DIExpression(), !2568)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2568
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2568
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %for.loop.preheader.i.i.i, !dbg !2570

for.loop.preheader.i.i.i:                         ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2571)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2572)
    #dbg_value(i32 2, !1752, !DIExpression(), !2572)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2574)
    #dbg_value(i32 2, !1752, !DIExpression(), !2575)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2576)
    #dbg_value(i32 2, !1764, !DIExpression(), !2576)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2576
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2578
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2570

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %for.loop.preheader.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2579)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1832, !DIExpression(), !2580)
    #dbg_value(i32 2, !1837, !DIExpression(), !2582)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !2583
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2574)
    #dbg_value(i32 2, !1752, !DIExpression(), !2575)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2576)
    #dbg_value(i32 2, !1764, !DIExpression(), !2576)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2576
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2578
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2570

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %for.loop.preheader.i.i.i, %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2584, !DIExpression(), !2588)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2590)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2593)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2593
  %9 = icmp eq i32 %8, 0, !dbg !2595
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2596

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2584, !DIExpression(), !2597)
    #dbg_value(i32 %10, !2587, !DIExpression(), !2598)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2599)
    #dbg_value(i32 %10, !1837, !DIExpression(), !2601)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #15, !dbg !2602
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2593)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2593
    #dbg_value(i32 %11, !2587, !DIExpression(), !2603)
  %12 = icmp eq i32 %11, 0, !dbg !2595
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2596

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2044, !DIExpression(), !2604)
    #dbg_value(i32 1, !2047, !DIExpression(), !2604)
    #dbg_value(ptr @"internal/task.gcState", !2044, !DIExpression(), !2606)
    #dbg_value(i32 1, !2047, !DIExpression(), !2607)
    #dbg_value(ptr @"internal/task.gcState", !2052, !DIExpression(), !2608)
    #dbg_value(i32 1, !2055, !DIExpression(), !2608)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2608
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2610
    #dbg_value(i32 %13, !2538, !DIExpression(), !2610)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2611
    #dbg_value(%"internal/task.Semaphore" poison, !2539, !DIExpression(), !2611)
    #dbg_value(ptr poison, !2540, !DIExpression(), !2612)
    #dbg_value(ptr poison, !2541, !DIExpression(), !2613)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2614
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2615
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2559

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2541, !DIExpression(), !2616)
    #dbg_value(ptr %0, !2537, !DIExpression(), !2617)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2618
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2559

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2541, !DIExpression(), !2619)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2620
  %17 = load ptr, ptr %16, align 8, !dbg !2620
  call void @tinygo_task_send_gc_signal(ptr %17) #15, !dbg !2621
  br label %deref.next15.i.i, !dbg !2559

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2541, !DIExpression(), !2622)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2623
    #dbg_value(ptr poison, !2541, !DIExpression(), !2624)
  %19 = load ptr, ptr %18, align 8, !dbg !2614
    #dbg_value(ptr %19, !2541, !DIExpression(), !2625)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2615
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2559

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2584, !DIExpression(), !2626)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2628)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2630)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2631)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2631
  %21 = icmp eq i32 %20, 0, !dbg !2633
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2634

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2584, !DIExpression(), !2635)
    #dbg_value(i32 %22, !2587, !DIExpression(), !2636)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2637)
    #dbg_value(i32 %22, !1837, !DIExpression(), !2639)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #15, !dbg !2640
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2630)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2631)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2631
    #dbg_value(i32 %23, !2587, !DIExpression(), !2641)
  %24 = icmp eq i32 %23, 0, !dbg !2633
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2634

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2540, !DIExpression(), !2642)
    #dbg_value(ptr poison, !2542, !DIExpression(), !2643)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2644
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2645
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2559

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2542, !DIExpression(), !2646)
    #dbg_value(ptr %0, !2537, !DIExpression(), !2647)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2648
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2559

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2542, !DIExpression(), !2649)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2650
  %28 = load i64, ptr %27, align 8, !dbg !2650
    #dbg_value(ptr %26, !2542, !DIExpression(), !2651)
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2652
  %30 = load i64, ptr %29, align 8, !dbg !2652
    #dbg_value(i64 %28, !2653, !DIExpression(), !2659)
    #dbg_value(i64 %30, !2658, !DIExpression(), !2659)
    #dbg_value(i64 %28, !2653, !DIExpression(), !2661)
    #dbg_value(i64 %30, !2658, !DIExpression(), !2662)
  call void @GC_push_all(i64 %28, i64 %30) #15, !dbg !2663
  br label %deref.next33.i.i, !dbg !2559

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2542, !DIExpression(), !2664)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2665
    #dbg_value(ptr poison, !2542, !DIExpression(), !2666)
  %32 = load ptr, ptr %31, align 8, !dbg !2644
    #dbg_value(ptr %32, !2542, !DIExpression(), !2667)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2645
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2559

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  call void @tinygo_scanCurrentStack() #15, !dbg !2668
    #dbg_value(ptr undef, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2701)
    #dbg_value(ptr poison, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2701)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2675, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2705)
    #dbg_value(i64 0, !2676, !DIExpression(), !2706)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2707
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2708
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2709

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2710
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2675, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2705)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2711
    #dbg_value(i64 %35, !2675, !DIExpression(), !2705)
  %36 = inttoptr i64 %35 to ptr, !dbg !2712
    #dbg_value(ptr %36, !2675, !DIExpression(), !2705)
  br label %if.then.i.i.i.i, !dbg !2713

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i64 [ %53, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %38 = phi ptr [ %52, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %37, !2676, !DIExpression(), !2714)
    #dbg_value(ptr %38, !2675, !DIExpression(), !2715)
    #dbg_value(ptr %38, !2677, !DIExpression(), !2716)
    #dbg_value(ptr %38, !2677, !DIExpression(), !2717)
  %39 = icmp eq ptr %38, null, !dbg !2713
  br i1 %39, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2713

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %40 = load i32, ptr %38, align 4, !dbg !2713
  %41 = icmp eq i32 %40, 1, !dbg !2718
  br i1 %41, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2709

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2677, !DIExpression(), !2719)
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !2720
  %43 = load i32, ptr %42, align 4, !dbg !2720
  %44 = and i32 %43, 2, !dbg !2721
  %.not.i.i.i.i = icmp eq i32 %44, 0, !dbg !2722
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2709

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %38, !2677, !DIExpression(), !2723)
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !2724
  %46 = load i64, ptr %45, align 8, !dbg !2724
    #dbg_value(i64 %46, !2690, !DIExpression(), !2725)
    #dbg_value(i64 %46, !2690, !DIExpression(), !2726)
    #dbg_value(ptr %38, !2677, !DIExpression(), !2727)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2691, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2728)
    #dbg_value({ ptr, ptr } poison, !2669, !DIExpression(), !2729)
    #dbg_value(i64 %46, !2690, !DIExpression(), !2730)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2691, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2731)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 40, !dbg !2732
  %48 = load i64, ptr %47, align 8, !dbg !2732
    #dbg_value(!DIArgList(i64 %46, i64 %48), !2691, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2731)
  %49 = add i64 %48, %46, !dbg !2733
    #dbg_value(i64 %49, !2691, !DIExpression(), !2731)
    #dbg_value(i64 %46, !2653, !DIExpression(), !2734)
    #dbg_value(i64 %49, !2658, !DIExpression(), !2734)
    #dbg_value(i64 %46, !2653, !DIExpression(), !2736)
    #dbg_value(i64 %49, !2658, !DIExpression(), !2737)
  call void @GC_push_all(i64 %46, i64 %49) #15, !dbg !2738
  br label %if.done.i.i.i.i, !dbg !2709

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2675, !DIExpression(), !2739)
  %50 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2740
  %51 = sext i16 %50 to i64, !dbg !2741
  %52 = getelementptr i8, ptr %38, i64 %51, !dbg !2741
    #dbg_value(ptr %52, !2675, !DIExpression(), !2742)
  %53 = add nuw nsw i64 %37, 1, !dbg !2743
    #dbg_value(i64 %53, !2676, !DIExpression(), !2714)
  %54 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2707
  %55 = zext i16 %54 to i64, !dbg !2744
  %56 = icmp samesign ult i64 %53, %55, !dbg !2708
  br i1 %56, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2709

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !2713
  unreachable, !dbg !2713

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2745
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #1 !dbg !2746 {
entry:
    #dbg_value(i64 %sp, !2749, !DIExpression(), !2750)
    #dbg_value(i64 %sp, !2749, !DIExpression(), !2751)
  %0 = call ptr @tinygo_task_current() #15, !dbg !2752
    #dbg_value(ptr %0, !1893, !DIExpression(), !2756)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2757)
  %1 = icmp eq ptr %0, null, !dbg !2758
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2759

if.then.i.i:                                      ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2760
  unreachable, !dbg !2759

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2761)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2762
  %3 = load i64, ptr %2, align 8, !dbg !2762
    #dbg_value(i64 %sp, !2653, !DIExpression(), !2763)
    #dbg_value(i64 %3, !2658, !DIExpression(), !2763)
    #dbg_value(i64 %sp, !2653, !DIExpression(), !2765)
    #dbg_value(i64 %3, !2658, !DIExpression(), !2766)
  call void @GC_push_all(i64 %sp, i64 %3) #15, !dbg !2767
  ret void, !dbg !2768
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #1 !dbg !2769 {
entry:
    #dbg_value(i32 %argc, !2773, !DIExpression(), !2778)
    #dbg_value(ptr %argv, !2774, !DIExpression(), !2778)
    #dbg_value(i32 %argc, !2773, !DIExpression(), !2779)
    #dbg_value(i32 %argc, !2775, !DIExpression(), !2780)
    #dbg_value(ptr %argv, !2774, !DIExpression(), !2781)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2782
    #dbg_value(ptr %argv, !2776, !DIExpression(), !2782)
  call void @tinygo_register_fatal_signals() #15, !dbg !2783
  %0 = call ptr @llvm.stacksave.p0(), !dbg !2784
  %1 = ptrtoint ptr %0 to i64, !dbg !2789
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2790
    #dbg_value(i64 %1, !2777, !DIExpression(), !2790)
  call fastcc void @runtime.runMain(), !dbg !2791
  ret i64 0, !dbg !2792
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #12 !dbg !2793 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2794
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2794
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2794
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #15, !dbg !2810
    #dbg_value(i32 %0, !2797, !DIExpression(), !2811)
    #dbg_value(i32 %0, !2797, !DIExpression(), !2812)
  %.not.i.i.i = icmp eq i32 %0, 8, !dbg !2813
  br i1 %.not.i.i.i, label %runtime.run.exit, label %if.then.i.i.i, !dbg !2814

if.then.i.i.i:                                    ; preds = %entry
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2815
  br label %runtime.run.exit, !dbg !2815

runtime.run.exit:                                 ; preds = %entry, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2814
    #dbg_value(i64 poison, !2802, !DIExpression(), !2816)
    #dbg_value(i64 poison, !2802, !DIExpression(), !2817)
    #dbg_value(i64 poison, !2803, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2818)
    #dbg_value(i64 poison, !2803, !DIExpression(), !2819)
    #dbg_value(i64 poison, !2804, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2820)
  call void @GC_init() #15, !dbg !2821
  call void @tinygo_runtime_bdwgc_init() #15, !dbg !2824
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2825
    #dbg_value(i64 %1, !2808, !DIExpression(), !2825)
    #dbg_value(i64 %1, !2826, !DIExpression(), !2830)
    #dbg_value(i64 %1, !2826, !DIExpression(), !2832)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2833
    #dbg_value(i64 %1, !2829, !DIExpression(), !2833)
  call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #15, !dbg !2834
  call void @main.main(ptr undef) #15, !dbg !2835
  ret void, !dbg !2836
}

declare void @main.main(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #1 !dbg !2837 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2843
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2846
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2849
    #dbg_value(i64 %66, !2855, !DIExpression(), !2871)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2872
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2873
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2875
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2878
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2881
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2884
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2887
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2890
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2893
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2896
    #dbg_value(i32 %sig, !2841, !DIExpression(), !2899)
    #dbg_value(i64 %addr, !2842, !DIExpression(), !2899)
    #dbg_value(i64 %addr, !2842, !DIExpression(), !2900)
  %.not = icmp eq i64 %addr, 0, !dbg !2901
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2902

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2135, !DIExpression(), !2903)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2904)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2905
  %2 = load i8, ptr %1, align 1, !dbg !2905
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2906
    #dbg_value(i8 %2, !2142, !DIExpression(), !2906)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2906
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2907
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2908
  %4 = add nuw nsw i64 %0, 1, !dbg !2909
    #dbg_value(i64 %4, !2135, !DIExpression(), !2910)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2911
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2912

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2842, !DIExpression(), !2913)
  call fastcc void @runtime.printptr(i64 %addr), !dbg !2914
  br label %for.body.i2, !dbg !2902

for.body.i2:                                      ; preds = %runtime.printstring.exit, %for.body.i47
    #dbg_value(ptr poison, !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2915)
    #dbg_value(i64 16, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2915)
    #dbg_value(i64 0, !2135, !DIExpression(), !2916)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2917)
    #dbg_value(i64 0, !2135, !DIExpression(), !2918)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2919)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 58, !2142, !DIExpression(), !2920)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 1, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 32, !2142, !DIExpression(), !2920)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 2, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 99, !2142, !DIExpression(), !2920)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 3, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 97, !2142, !DIExpression(), !2920)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 4, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 117, !2142, !DIExpression(), !2920)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 5, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 103, !2142, !DIExpression(), !2920)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 6, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 104, !2142, !DIExpression(), !2920)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 7, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 116, !2142, !DIExpression(), !2920)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 8, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 32, !2142, !DIExpression(), !2920)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 9, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 115, !2142, !DIExpression(), !2920)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 10, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 105, !2142, !DIExpression(), !2920)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 11, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 103, !2142, !DIExpression(), !2920)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 12, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 110, !2142, !DIExpression(), !2920)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 13, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 97, !2142, !DIExpression(), !2920)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 14, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 108, !2142, !DIExpression(), !2920)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 15, !2135, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2920
    #dbg_value(i8 32, !2142, !DIExpression(), !2920)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2920
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2922
    #dbg_value(i64 16, !2135, !DIExpression(), !2923)
    #dbg_value(i32 %sig, !2841, !DIExpression(), !2924)
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2902

switch.body:                                      ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2925)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2929)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2930)
    #dbg_value(i32 0, !1806, !DIExpression(), !2930)
    #dbg_value(i32 1, !1807, !DIExpression(), !2930)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2932)
    #dbg_value(i32 0, !1806, !DIExpression(), !2933)
    #dbg_value(i32 1, !1807, !DIExpression(), !2934)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2935)
    #dbg_value(i32 0, !1818, !DIExpression(), !2935)
    #dbg_value(i32 1, !1819, !DIExpression(), !2935)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2935
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2935
  br i1 %22, label %for.body.i6, label %for.loop.preheader.i.i, !dbg !2937

for.loop.preheader.i.i:                           ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2938)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2939)
    #dbg_value(i32 2, !1752, !DIExpression(), !2939)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2941)
    #dbg_value(i32 2, !1752, !DIExpression(), !2942)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2943)
    #dbg_value(i32 2, !1764, !DIExpression(), !2943)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2943
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2945
  br i1 %.not4.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2937

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %for.loop.preheader.i.i, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2946)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2947)
    #dbg_value(i32 2, !1837, !DIExpression(), !2949)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !2950
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2941)
    #dbg_value(i32 2, !1752, !DIExpression(), !2942)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2943)
    #dbg_value(i32 2, !1764, !DIExpression(), !2943)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2943
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2945
  br i1 %.not.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2937

for.body.i6:                                      ; preds = %for.loop.preheader.i.i, %switch.body, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr poison, !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2951)
    #dbg_value(i64 6, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2951)
    #dbg_value(i64 0, !2135, !DIExpression(), !2952)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2953)
    #dbg_value(i64 0, !2135, !DIExpression(), !2954)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !2955)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 83, !2142, !DIExpression(), !2956)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 1, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 73, !2142, !DIExpression(), !2956)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 2, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 71, !2142, !DIExpression(), !2956)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 3, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 66, !2142, !DIExpression(), !2956)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 4, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 85, !2142, !DIExpression(), !2956)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 5, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2956
    #dbg_value(i8 83, !2142, !DIExpression(), !2956)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2956
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2958
    #dbg_value(i64 6, !2135, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2960
    #dbg_value(i8 10, !2142, !DIExpression(), !2960)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2960
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #15, !dbg !2961
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2962
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2963)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2967)
    #dbg_value(i32 0, !1752, !DIExpression(), !2969)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2970)
    #dbg_value(i32 0, !1764, !DIExpression(), !2970)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2970
    #dbg_value(i32 %32, !1741, !DIExpression(), !2972)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %gep.next5.i.i
  ], !dbg !2973

if.then.i.i:                                      ; preds = %for.body.i6
  call fastcc void @runtime._panic(), !dbg !2974
  unreachable, !dbg !2974

gep.next5.i.i:                                    ; preds = %for.body.i6
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2975)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2976)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2978)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !2979
  br label %switch.done, !dbg !2973

switch.done:                                      ; preds = %gep.next5.i.i43, %runtime.printint32.exit, %gep.next5.i.i33, %for.body.i29, %gep.next5.i.i20, %for.body.i16, %gep.next5.i.i, %for.body.i6
    #dbg_value(i32 %sig, !2841, !DIExpression(), !2980)
  call void @raise(i32 %sig) #15, !dbg !2981
  ret void, !dbg !2982

switch.body3:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2983)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2986)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2987)
    #dbg_value(i32 0, !1806, !DIExpression(), !2987)
    #dbg_value(i32 1, !1807, !DIExpression(), !2987)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2989)
    #dbg_value(i32 0, !1806, !DIExpression(), !2990)
    #dbg_value(i32 1, !1807, !DIExpression(), !2991)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2992)
    #dbg_value(i32 0, !1818, !DIExpression(), !2992)
    #dbg_value(i32 1, !1819, !DIExpression(), !2992)
  %33 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2992
  %34 = extractvalue { i32, i1 } %33, 1, !dbg !2992
  br i1 %34, label %for.body.i16, label %for.loop.preheader.i.i10, !dbg !2994

for.loop.preheader.i.i10:                         ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2995)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2996)
    #dbg_value(i32 2, !1752, !DIExpression(), !2996)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2998)
    #dbg_value(i32 2, !1752, !DIExpression(), !2999)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3000)
    #dbg_value(i32 2, !1764, !DIExpression(), !3000)
  %35 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3000
  %.not4.i.i11 = icmp eq i32 %35, 0, !dbg !3002
  br i1 %.not4.i.i11, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2994

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %for.loop.preheader.i.i10, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3003)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !3004)
    #dbg_value(i32 2, !1837, !DIExpression(), !3006)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3007
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2998)
    #dbg_value(i32 2, !1752, !DIExpression(), !2999)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3000)
    #dbg_value(i32 2, !1764, !DIExpression(), !3000)
  %36 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3000
  %.not.i.i13 = icmp eq i32 %36, 0, !dbg !3002
  br i1 %.not.i.i13, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2994

for.body.i16:                                     ; preds = %for.loop.preheader.i.i10, %switch.body3, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr poison, !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3008)
    #dbg_value(i64 6, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3008)
    #dbg_value(i64 0, !2135, !DIExpression(), !3009)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !3010)
    #dbg_value(i64 0, !2135, !DIExpression(), !3011)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !3012)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 83, !2142, !DIExpression(), !3013)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 1, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 73, !2142, !DIExpression(), !3013)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 2, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 71, !2142, !DIExpression(), !3013)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 3, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 73, !2142, !DIExpression(), !3013)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 4, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 76, !2142, !DIExpression(), !3013)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 5, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3013
    #dbg_value(i8 76, !2142, !DIExpression(), !3013)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3013
  %42 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3015
    #dbg_value(i64 6, !2135, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3017
    #dbg_value(i8 10, !2142, !DIExpression(), !3017)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3017
  %43 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #15, !dbg !3018
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3019
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3020)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3023)
    #dbg_value(i32 0, !1752, !DIExpression(), !3025)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3026)
    #dbg_value(i32 0, !1764, !DIExpression(), !3026)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3026
    #dbg_value(i32 %44, !1741, !DIExpression(), !3028)
  switch i32 %44, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %gep.next5.i.i20
  ], !dbg !3029

if.then.i.i21:                                    ; preds = %for.body.i16
  call fastcc void @runtime._panic(), !dbg !3030
  unreachable, !dbg !3030

gep.next5.i.i20:                                  ; preds = %for.body.i16
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3031)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3032)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3034)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3035
  br label %switch.done, !dbg !3029

switch.body5:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3036)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3039)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3040)
    #dbg_value(i32 0, !1806, !DIExpression(), !3040)
    #dbg_value(i32 1, !1807, !DIExpression(), !3040)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3042)
    #dbg_value(i32 0, !1806, !DIExpression(), !3043)
    #dbg_value(i32 1, !1807, !DIExpression(), !3044)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !3045)
    #dbg_value(i32 0, !1818, !DIExpression(), !3045)
    #dbg_value(i32 1, !1819, !DIExpression(), !3045)
  %45 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3045
  %46 = extractvalue { i32, i1 } %45, 1, !dbg !3045
  br i1 %46, label %for.body.i29, label %for.loop.preheader.i.i23, !dbg !3047

for.loop.preheader.i.i23:                         ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3048)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3049)
    #dbg_value(i32 2, !1752, !DIExpression(), !3049)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3051)
    #dbg_value(i32 2, !1752, !DIExpression(), !3052)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3053)
    #dbg_value(i32 2, !1764, !DIExpression(), !3053)
  %47 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3053
  %.not4.i.i24 = icmp eq i32 %47, 0, !dbg !3055
  br i1 %.not4.i.i24, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3047

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %for.loop.preheader.i.i23, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3056)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !3057)
    #dbg_value(i32 2, !1837, !DIExpression(), !3059)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3060
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3051)
    #dbg_value(i32 2, !1752, !DIExpression(), !3052)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3053)
    #dbg_value(i32 2, !1764, !DIExpression(), !3053)
  %48 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3053
  %.not.i.i26 = icmp eq i32 %48, 0, !dbg !3055
  br i1 %.not.i.i26, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3047

for.body.i29:                                     ; preds = %for.loop.preheader.i.i23, %switch.body5, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr poison, !2134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3061)
    #dbg_value(i64 7, !2134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3061)
    #dbg_value(i64 0, !2135, !DIExpression(), !3062)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !3063)
    #dbg_value(i64 0, !2135, !DIExpression(), !3064)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !3065)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 83, !2142, !DIExpression(), !3066)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 1, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 73, !2142, !DIExpression(), !3066)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 2, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 71, !2142, !DIExpression(), !3066)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 3, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 83, !2142, !DIExpression(), !3066)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 4, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 69, !2142, !DIExpression(), !3066)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %53 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 5, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 71, !2142, !DIExpression(), !3066)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %54 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 6, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3066
    #dbg_value(i8 86, !2142, !DIExpression(), !3066)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3066
  %55 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3068
    #dbg_value(i64 7, !2135, !DIExpression(), !3069)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3070
    #dbg_value(i8 10, !2142, !DIExpression(), !3070)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3070
  %56 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #15, !dbg !3071
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3072
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3073)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3076)
    #dbg_value(i32 0, !1752, !DIExpression(), !3078)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3079)
    #dbg_value(i32 0, !1764, !DIExpression(), !3079)
  %57 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3079
    #dbg_value(i32 %57, !1741, !DIExpression(), !3081)
  switch i32 %57, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %gep.next5.i.i33
  ], !dbg !3082

if.then.i.i34:                                    ; preds = %for.body.i29
  call fastcc void @runtime._panic(), !dbg !3083
  unreachable, !dbg !3083

gep.next5.i.i33:                                  ; preds = %for.body.i29
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3084)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3085)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3087)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3088
  br label %switch.done, !dbg !3082

switch.next6:                                     ; preds = %for.body.i2
    #dbg_value(i32 %sig, !2841, !DIExpression(), !3089)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3090)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3093)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3094)
    #dbg_value(i32 0, !1806, !DIExpression(), !3094)
    #dbg_value(i32 1, !1807, !DIExpression(), !3094)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3096)
    #dbg_value(i32 0, !1806, !DIExpression(), !3097)
    #dbg_value(i32 1, !1807, !DIExpression(), !3098)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !3099)
    #dbg_value(i32 0, !1818, !DIExpression(), !3099)
    #dbg_value(i32 1, !1819, !DIExpression(), !3099)
  %58 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3099
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !3099
  br i1 %59, label %runtime.printlock.exit40, label %for.loop.preheader.i.i36, !dbg !3101

for.loop.preheader.i.i36:                         ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3102)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3103)
    #dbg_value(i32 2, !1752, !DIExpression(), !3103)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3105)
    #dbg_value(i32 2, !1752, !DIExpression(), !3106)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3107)
    #dbg_value(i32 2, !1764, !DIExpression(), !3107)
  %60 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3107
  %.not4.i.i37 = icmp eq i32 %60, 0, !dbg !3109
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3101

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %for.loop.preheader.i.i36, %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3110)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !3111)
    #dbg_value(i32 2, !1837, !DIExpression(), !3113)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3114
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3105)
    #dbg_value(i32 2, !1752, !DIExpression(), !3106)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3107)
    #dbg_value(i32 2, !1764, !DIExpression(), !3107)
  %61 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3107
  %.not.i.i39 = icmp eq i32 %61, 0, !dbg !3109
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3101

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %for.loop.preheader.i.i36
    #dbg_value(i32 %sig, !2869, !DIExpression(), !3115)
    #dbg_value(i32 %sig, !2869, !DIExpression(), !3116)
  %62 = icmp slt i32 %sig, 0, !dbg !3117
  br i1 %62, label %if.then.i, label %if.done.i, !dbg !3118

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3119
    #dbg_value(i8 45, !2142, !DIExpression(), !3120)
    #dbg_value(i8 45, !2142, !DIExpression(), !3119)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3119
    #dbg_value(i8 45, !2142, !DIExpression(), !3119)
  %63 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #15, !dbg !3121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3122
    #dbg_value(i32 %sig, !2869, !DIExpression(), !3123)
  %64 = sub i32 0, %sig, !dbg !3124
    #dbg_value(i32 %64, !2869, !DIExpression(), !3125)
  br label %if.done.i, !dbg !3118

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %65 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %64, %if.then.i ], !dbg !3126
    #dbg_value(i32 %65, !2869, !DIExpression(), !3127)
    #dbg_value(i32 %65, !2865, !DIExpression(), !3128)
    #dbg_value(i32 %65, !2865, !DIExpression(), !3129)
  %66 = zext i32 %65 to i64, !dbg !3130
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2872
    #dbg_value(i64 19, !2856, !DIExpression(), !3131)
    #dbg_value(i64 19, !2857, !DIExpression(), !3132)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2872
  br label %for.body.i.i.i, !dbg !3133

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2859, !DIExpression(), !3134)
  %67 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3135
  br i1 %67, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3133

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %68 = phi i64 [ 19, %if.done.i ], [ %76, %for.body.i.i.i ]
  %69 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %70 = phi i64 [ %66, %if.done.i ], [ %75, %for.body.i.i.i ]
    #dbg_value(i64 %68, !2857, !DIExpression(), !3136)
    #dbg_value(i64 %70, !2855, !DIExpression(), !3137)
  %71 = urem i64 %70, 10, !dbg !3138
  %72 = trunc nuw nsw i64 %71 to i8, !dbg !3139
  %73 = or disjoint i8 %72, 48, !dbg !3139
    #dbg_value(i8 %73, !2858, !DIExpression(), !3140)
  %74 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %68, !dbg !3141
  store i8 %73, ptr %74, align 1, !dbg !3141
  %.not.i.i.i = icmp eq i64 %71, 0, !dbg !3142
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %69, i64 %68, !dbg !3133
  %75 = udiv i64 %70, 10, !dbg !3143
    #dbg_value(i64 %75, !2855, !DIExpression(), !3143)
  %76 = add nsw i64 %68, -1, !dbg !3144
    #dbg_value(i64 %76, !2857, !DIExpression(), !3136)
  %.not23.i.i.i = icmp eq i64 %68, 0, !dbg !3145
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3133

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %77 = phi i64 [ %81, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %77, !2859, !DIExpression(), !3146)
  %78 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %77, !dbg !3147
  %79 = load i8, ptr %78, align 1, !dbg !3147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3148
    #dbg_value(i8 %79, !2142, !DIExpression(), !3148)
  store i8 %79, ptr %stackalloc.i.i.i.i, align 1, !dbg !3148
  %80 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #15, !dbg !3149
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3150
  %81 = add i64 %77, 1, !dbg !3151
    #dbg_value(i64 %81, !2859, !DIExpression(), !3134)
  %exitcond.not.i.i.i = icmp eq i64 %81, 20, !dbg !3135
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3133

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3153
    #dbg_value(i8 10, !2142, !DIExpression(), !3154)
    #dbg_value(i8 10, !2142, !DIExpression(), !3153)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3153
    #dbg_value(i8 10, !2142, !DIExpression(), !3153)
  %82 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #15, !dbg !3155
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3156
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3157)
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3160)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3161)
    #dbg_value(i32 0, !1752, !DIExpression(), !3161)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3163)
    #dbg_value(i32 0, !1752, !DIExpression(), !3164)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3165)
    #dbg_value(i32 0, !1764, !DIExpression(), !3165)
  %83 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3165
    #dbg_value(i32 %83, !1741, !DIExpression(), !3167)
    #dbg_value(i32 %83, !1741, !DIExpression(), !3168)
  switch i32 %83, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %gep.next5.i.i43
  ], !dbg !3169

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  call fastcc void @runtime._panic(), !dbg !3170
  unreachable, !dbg !3170

gep.next5.i.i43:                                  ; preds = %runtime.printint32.exit
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3171)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3172)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3174)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3175
  br label %switch.done, !dbg !3169

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %84 = phi i64 [ %88, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %84, !2135, !DIExpression(), !3176)
    #dbg_value(%runtime._string poison, !2134, !DIExpression(), !3177)
  %85 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %84, !dbg !3178
  %86 = load i8, ptr %85, align 1, !dbg !3178
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3179
    #dbg_value(i8 %86, !2142, !DIExpression(), !3179)
  store i8 %86, ptr %stackalloc.i.i46, align 1, !dbg !3179
  %87 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3181
  %88 = add nuw nsw i64 %84, 1, !dbg !3182
    #dbg_value(i64 %88, !2135, !DIExpression(), !3183)
  %exitcond.not.i48 = icmp eq i64 %88, 20, !dbg !3184
  br i1 %exitcond.not.i48, label %for.body.i2, label %for.body.i47, !dbg !3185
}

declare void @raise(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #1 !dbg !3186 {
entry:
    #dbg_value(i32 %s, !3188, !DIExpression(), !3192)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3193

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3188, !DIExpression(), !3194)
    #dbg_value(i32 %shift.result, !3189, !DIExpression(), !3195)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3196)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3198)
    #dbg_value(ptr @runtime.receivedSignals, !1947, !DIExpression(), !3199)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3199
    #dbg_value(i32 %1, !3190, !DIExpression(), !3201)
    #dbg_value(i32 %1, !3190, !DIExpression(), !3202)
    #dbg_value(i32 %1, !3190, !DIExpression(), !3203)
    #dbg_value(i32 %shift.result, !3189, !DIExpression(), !3204)
  %2 = or i32 %1, %shift.result, !dbg !3205
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3206)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3206)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3206)
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3208)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3209)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3210)
    #dbg_value(ptr @runtime.receivedSignals, !1813, !DIExpression(), !3211)
    #dbg_value(i32 %1, !1818, !DIExpression(), !3211)
    #dbg_value(i32 %2, !1819, !DIExpression(), !3211)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3211
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3211
    #dbg_value(i1 %4, !3191, !DIExpression(), !3213)
    #dbg_value(i1 %4, !3191, !DIExpression(), !3214)
  br i1 %4, label %if.then, label %for.body, !dbg !3193

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3215)
    #dbg_value(i32 1, !1752, !DIExpression(), !3215)
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3217)
    #dbg_value(i32 1, !1752, !DIExpression(), !3218)
    #dbg_value(ptr @runtime.signalFutex, !1757, !DIExpression(), !3219)
    #dbg_value(i32 1, !1764, !DIExpression(), !3219)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3219
  %6 = icmp eq i32 %5, 0, !dbg !3221
  br i1 %6, label %if.then1, label %if.done, !dbg !3193

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3222)
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3224)
  call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #15, !dbg !3225
  br label %if.done, !dbg !3193

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3226
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #1 !dbg !3227 {
entry:
    #dbg_value(ptr %arr.data, !3236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3243)
    #dbg_value(i64 %arr.len, !3236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3243)
    #dbg_value(i64 %arr.cap, !3236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3243)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3243)
  %arr = call fastcc align 8 dereferenceable(24) ptr @runtime.alloc(i64 24, ptr nonnull inttoptr (i64 135 to ptr)), !dbg !3244
  store ptr %arr.data, ptr %arr, align 8, !dbg !3244
  %arr.repack3 = getelementptr inbounds nuw i8, ptr %arr, i64 8, !dbg !3244
  store i64 %arr.len, ptr %arr.repack3, align 8, !dbg !3244
  %arr.repack5 = getelementptr inbounds nuw i8, ptr %arr, i64 16, !dbg !3244
  store i64 %arr.cap, ptr %arr.repack5, align 8, !dbg !3244
    #dbg_value(i64 0, !3238, !DIExpression(), !3245)
    #dbg_value(i64 0, !3239, !DIExpression(), !3246)
    #dbg_value(i64 0, !3240, !DIExpression(), !3247)
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !3240, !DIExpression(), !3248)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3249)
  %.not72 = icmp slt i64 %0, 0, !dbg !3250
  br i1 %.not72, label %for.done6, label %for.body.lr.ph, !dbg !3251

for.body.lr.ph:                                   ; preds = %entry
  %.unpack9 = load i64, ptr %arr.repack3, align 8
  %.unpack = load ptr, ptr %arr, align 8
  br label %for.body, !dbg !3251

for.body:                                         ; preds = %for.body.lr.ph, %if.done5
  %1 = phi i64 [ 0, %for.body.lr.ph ], [ %4, %if.done5 ]
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %18, %if.done5 ]
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %17, %if.done5 ]
    #dbg_value(i64 %1, !3240, !DIExpression(), !3248)
    #dbg_value(i1 true, !3241, !DIExpression(), !3252)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3253)
  %4 = add i64 %1, 1, !dbg !3254
    #dbg_value(i64 %4, !3242, !DIExpression(), !3255)
  %.not771 = icmp sgt i64 %4, %0, !dbg !3256
  br i1 %.not771, label %if.then3, label %for.body2.lr.ph, !dbg !3251

for.body2.lr.ph:                                  ; preds = %for.body
  %.not12 = icmp ult i64 %1, %.unpack9
  %5 = getelementptr inbounds i64, ptr %.unpack, i64 %1
  br i1 %.not12, label %for.body2, label %lookup.throw, !dbg !3257

for.body2:                                        ; preds = %for.body2.lr.ph, %deref.next18
  %6 = phi i64 [ %11, %deref.next18 ], [ %4, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3258)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3259)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3260)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3260)
    #dbg_value(i64 %6, !3242, !DIExpression(), !3261)
  %exitcond.not = icmp eq i64 %6, %.unpack9, !dbg !3262
  br i1 %exitcond.not, label %lookup.throw11, label %lookup.next12, !dbg !3262

lookup.next12:                                    ; preds = %for.body2
  %7 = load i64, ptr %5, align 8, !dbg !3257
  %8 = getelementptr inbounds i64, ptr %.unpack, i64 %6, !dbg !3262
  %9 = load i64, ptr %8, align 8, !dbg !3262
  %10 = icmp eq i64 %7, %9, !dbg !3263
  br i1 %10, label %if.then, label %deref.next18, !dbg !3251

if.then:                                          ; preds = %lookup.next12
    #dbg_value(i1 false, !3241, !DIExpression(), !3264)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3265)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3266)
    #dbg_value({ ptr, i64, i64 } poison, !3267, !DIExpression(), !3272)
    #dbg_value(i64 poison, !3270, !DIExpression(), !3274)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !3271, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3275)
    #dbg_value({ ptr, i64, i64 } poison, !3267, !DIExpression(), !3276)
    #dbg_value(i64 poison, !3270, !DIExpression(), !3277)
    #dbg_value(!DIArgList(ptr %.unpack, i64 poison), !3271, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3275)
    #dbg_value(ptr %8, !3271, !DIExpression(), !3275)
  store i64 0, ptr %8, align 8, !dbg !3278
    #dbg_value(ptr %8, !3271, !DIExpression(), !3279)
  store i64 0, ptr %5, align 8, !dbg !3280
    #dbg_value(i1 poison, !3241, !DIExpression(), !3281)
  br label %if.done5, !dbg !3251

deref.next18:                                     ; preds = %lookup.next12
  %11 = add i64 %6, 1, !dbg !3282
    #dbg_value(i64 %11, !3242, !DIExpression(), !3282)
    #dbg_value(i64 %11, !3242, !DIExpression(), !3283)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3284)
  %.not7 = icmp sgt i64 %11, %0, !dbg !3256
  br i1 %.not7, label %if.then3, label %for.body2, !dbg !3251

if.then3:                                         ; preds = %deref.next18, %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3285)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3286)
  %.not30 = icmp ult i64 %1, %.unpack9, !dbg !3287
  br i1 %.not30, label %lookup.next23, label %lookup.throw22, !dbg !3287

lookup.next23:                                    ; preds = %if.then3
  %12 = getelementptr inbounds i64, ptr %.unpack, i64 %1, !dbg !3287
  %13 = load i64, ptr %12, align 8, !dbg !3287
  %14 = icmp sgt i64 %13, 0, !dbg !3288
  br i1 %14, label %lookup.next27, label %lookup.next31, !dbg !3251

lookup.next27:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3289)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3290)
  %15 = add i64 %13, %3, !dbg !3291
    #dbg_value(i64 %15, !3238, !DIExpression(), !3291)
  br label %if.done5, !dbg !3251

lookup.next31:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3292)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3293)
  %16 = add i64 %13, %2, !dbg !3294
    #dbg_value(i64 %16, !3239, !DIExpression(), !3294)
  br label %if.done5, !dbg !3251

if.done5:                                         ; preds = %if.then, %lookup.next31, %lookup.next27
  %17 = phi i64 [ %3, %if.then ], [ %15, %lookup.next27 ], [ %3, %lookup.next31 ], !dbg !3245
  %18 = phi i64 [ %2, %if.then ], [ %2, %lookup.next27 ], [ %16, %lookup.next31 ], !dbg !3246
    #dbg_value(i64 %4, !3240, !DIExpression(), !3248)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3249)
  %.not = icmp sgt i64 %4, %0, !dbg !3250
  br i1 %.not, label %for.done6.loopexit, label %for.body, !dbg !3251

for.done6.loopexit:                               ; preds = %if.done5
  %19 = sub i64 %17, %18, !dbg !3295
  %20 = sitofp i64 %19 to double, !dbg !3296
  br label %for.done6, !dbg !3295

for.done6:                                        ; preds = %for.done6.loopexit, %entry
  %21 = phi double [ 0.000000e+00, %entry ], [ %20, %for.done6.loopexit ], !dbg !3295
    #dbg_value(i64 poison, !3238, !DIExpression(), !3297)
    #dbg_value(i64 poison, !3239, !DIExpression(), !3298)
    #dbg_value(double %21, !3299, !DIExpression(), !3305)
    #dbg_value(double %21, !3299, !DIExpression(), !3307)
  %22 = call double @llvm.fabs.f64(double %21), !dbg !3308
  %belowmax = fcmp ole double %22, 0x43DFFFFFFFFFFFFE, !dbg !3309
  %normal = fptosi double %22 to i64, !dbg !3309
  %23 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3309
  ret i64 %23, !dbg !3310

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3257
  unreachable, !dbg !3257

lookup.throw11:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3262
  unreachable, !dbg !3262

lookup.throw22:                                   ; preds = %if.then3
  call fastcc void @runtime.lookupPanic(), !dbg !3287
  unreachable, !dbg !3287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

attributes #0 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { noinline nounwind allockind("alloc,zeroed") uwtable(sync) "alloc-family"="runtime.alloc" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #12 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!148, !150, !430, !449, !646, !690, !691, !692, !708, !724, !1453, !1464, !1497, !1498, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !2, file: !2, line: 45, type: !3, isLocal: false, isDefinition: true, align: 64)
!2 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !5)
!5 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !6)
!6 = !{!7, !8, !10, !12, !16, !44, !46, !48, !49}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !3, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !13, align: 8, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !17, size: 384, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !19)
!19 = !{!20, !22, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !21, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !3, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !37, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !41, align: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !45, size: 8, align: 8, offset: 576)
!45 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !47, size: 8, align: 8, offset: 584)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !45, size: 8, align: 8, offset: 592)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !9, size: 64, align: 64, offset: 640)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !2, file: !2, line: 42, type: !4, isLocal: false, isDefinition: true, align: 64)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !54, line: 1, type: !55, isLocal: true, isDefinition: true)
!54 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30, lowerBound: 0)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !2, file: !2, line: 40, type: !60, isLocal: false, isDefinition: true, align: 32)
!60 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !2, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !29)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20, lowerBound: 0)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !2, file: !2, line: 99, type: !43, isLocal: false, isDefinition: true, align: 32)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 136, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 17, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !2, file: !2, line: 151, type: !79, isLocal: false, isDefinition: true, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !32, size: 32, align: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !2, file: !2, line: 180, type: !32, isLocal: false, isDefinition: true, align: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!87 = !DIFile(filename: "<Go type>", directory: "")
!88 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8)
!91 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!90, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !102, file: !102, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!102 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !102, line: 93, type: !74, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !107, line: 78, type: !108, isLocal: true, isDefinition: true)
!107 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 7, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !107, line: 99, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 24, lowerBound: 0)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !107, line: 101, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !107, line: 184, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 23, lowerBound: 0)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !107, line: 194, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 18, lowerBound: 0)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !133, file: !133, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!133 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !133, file: !133, line: 106, type: !136, isLocal: false, isDefinition: true, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !133, line: 155, type: !113, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !133, line: 158, type: !67, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !133, file: !133, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !133, file: !133, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !147, file: !147, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!147 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!149 = !DIFile(filename: "<unknown>", directory: "")
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151)
!151 = !{!152, !155, !204, !212, !227, !237, !243, !252, !278, !285, !291, !311, !316, !321, !323, !325, !330, !332, !334, !336, !341, !346, !348, !353, !355, !358, !360, !362, !364, !366, !371, !376, !378, !383, !385, !387, !392, !394, !396, !398, !400, !402, !404, !406, !408, !413, !415, !417, !419, !93, !85, !425}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !154, file: !154, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!154 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !154, file: !154, line: 23, type: !157, isLocal: false, isDefinition: true, align: 8)
!157 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !158)
!158 = !{!159, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !161)
!161 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !164, size: 512, align: 8)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 512, align: 8, elements: !166)
!165 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!166 = !{!167}
!167 = !DISubrange(count: 64, lowerBound: 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 792)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !154, file: !154, line: 65, type: !206, isLocal: false, isDefinition: true, align: 8)
!206 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !207)
!207 = !{!159, !208, !209, !210, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 536)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !154, file: !154, line: 75, type: !214, isLocal: false, isDefinition: true, align: 8)
!214 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !215)
!215 = !{!159, !168, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 600)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !154, file: !154, line: 93, type: !229, isLocal: false, isDefinition: true, align: 8)
!229 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !230)
!230 = !{!159, !231, !232, !233, !234, !235, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 552)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !154, file: !154, line: 103, type: !239, isLocal: false, isDefinition: true, align: 8)
!239 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !240)
!240 = !{!159, !241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 520)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !154, file: !154, line: 114, type: !245, isLocal: false, isDefinition: true, align: 8)
!245 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !246)
!246 = !{!159, !247, !248, !249, !250, !251, !236}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !154, file: !154, line: 124, type: !254, isLocal: false, isDefinition: true, align: 8)
!254 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !255)
!255 = !{!159, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !160, size: 512, align: 8, offset: 680)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !154, file: !154, line: 154, type: !280, isLocal: false, isDefinition: true, align: 8)
!280 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !281)
!281 = !{!159, !282, !283, !284, !211}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !154, file: !154, line: 174, type: !287, isLocal: false, isDefinition: true, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !154, file: !154, line: 192, type: !293, isLocal: false, isDefinition: true, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !294)
!294 = !{!295, !305, !310}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64, dwarfAddressSpace: 0)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !299)
!299 = !{!300, !306, !308, !309}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !301, size: 128, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !307, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !154, line: 218, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4, lowerBound: 0)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !154, line: 223, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 33, lowerBound: 0)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !154, line: 223, type: !118, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !154, line: 230, type: !118, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !154, line: 239, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 3, lowerBound: 0)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !154, line: 255, type: !55, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !154, line: 255, type: !118, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !154, line: 232, type: !327, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !154, line: 235, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 16, lowerBound: 0)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !154, line: 235, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 32, lowerBound: 0)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !154, line: 235, type: !118, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !154, line: 264, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 25, lowerBound: 0)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !154, line: 264, type: !123, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !357, file: !357, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!357 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !357, line: 73, type: !327, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !357, line: 74, type: !327, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !357, line: 75, type: !313, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !357, line: 76, type: !313, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !357, line: 77, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 9, lowerBound: 0)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !357, line: 78, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 6, lowerBound: 0)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !357, line: 79, type: !327, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !357, line: 80, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 10, lowerBound: 0)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !357, line: 87, type: !373, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !357, line: 88, type: !313, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !357, line: 89, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 5, lowerBound: 0)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !357, line: 90, type: !389, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !357, line: 91, type: !389, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !357, line: 97, type: !327, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !357, line: 98, type: !313, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !357, line: 99, type: !313, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !357, line: 100, type: !313, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !357, line: 101, type: !327, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !357, line: 107, type: !108, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !357, line: 108, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 8, lowerBound: 0)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !357, line: 109, type: !410, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !357, line: 110, type: !410, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !357, line: 111, type: !410, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 1, type: !422, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 13, lowerBound: 0)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !421, line: 1, type: !427, isLocal: true, isDefinition: true)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 83, lowerBound: 0)
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !431)
!431 = !{!432, !436, !438, !447}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !434, file: !434, line: 44, type: !435, isLocal: false, isDefinition: true, align: 8)
!434 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, align: 8, elements: !344)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !434, file: !434, line: 51, type: !164, isLocal: false, isDefinition: true, align: 8)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !440, file: !440, line: 12, type: !441, isLocal: false, isDefinition: true, align: 64)
!440 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !443)
!443 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !440, file: !440, line: 15, type: !441, isLocal: false, isDefinition: true, align: 64)
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !450)
!450 = !{!451, !453, !456, !461, !464, !467, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !540, !542, !544, !549, !551, !553, !555, !559, !562, !567, !570, !572, !576, !578, !581, !583, !587, !591, !593, !595, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644}
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !154, file: !154, line: 23, type: !157, isLocal: false, isDefinition: true, align: 8)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !455, file: !455, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!455 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !458, file: !458, line: 66, type: !459, isLocal: false, isDefinition: true, align: 64)
!458 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 448, align: 64, elements: !109)
!460 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !458, file: !458, line: 75, type: !463, isLocal: false, isDefinition: true, align: 64)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 512, align: 64, elements: !411)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !458, file: !458, line: 85, type: !466, isLocal: false, isDefinition: true, align: 64)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 320, align: 64, elements: !390)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !469, file: !469, line: 240, type: !470, isLocal: false, isDefinition: true, align: 64)
!469 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, align: 64, elements: !374)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !469, file: !469, line: 248, type: !466, isLocal: false, isDefinition: true, align: 64)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !469, file: !469, line: 257, type: !470, isLocal: false, isDefinition: true, align: 64)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !469, file: !469, line: 265, type: !466, isLocal: false, isDefinition: true, align: 64)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !469, file: !469, line: 274, type: !470, isLocal: false, isDefinition: true, align: 64)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !469, file: !469, line: 282, type: !466, isLocal: false, isDefinition: true, align: 64)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !469, file: !469, line: 291, type: !470, isLocal: false, isDefinition: true, align: 64)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !469, file: !469, line: 299, type: !466, isLocal: false, isDefinition: true, align: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !469, file: !469, line: 339, type: !470, isLocal: false, isDefinition: true, align: 64)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !469, file: !469, line: 347, type: !470, isLocal: false, isDefinition: true, align: 64)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !469, file: !469, line: 357, type: !470, isLocal: false, isDefinition: true, align: 64)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !469, file: !469, line: 365, type: !470, isLocal: false, isDefinition: true, align: 64)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !469, file: !469, line: 375, type: !470, isLocal: false, isDefinition: true, align: 64)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !469, file: !469, line: 383, type: !470, isLocal: false, isDefinition: true, align: 64)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !469, file: !469, line: 393, type: !470, isLocal: false, isDefinition: true, align: 64)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !469, file: !469, line: 401, type: !470, isLocal: false, isDefinition: true, align: 64)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !503, file: !503, line: 235, type: !470, isLocal: false, isDefinition: true, align: 64)
!503 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !503, file: !503, line: 243, type: !466, isLocal: false, isDefinition: true, align: 64)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !503, file: !503, line: 252, type: !470, isLocal: false, isDefinition: true, align: 64)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !503, file: !503, line: 260, type: !466, isLocal: false, isDefinition: true, align: 64)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !503, file: !503, line: 269, type: !470, isLocal: false, isDefinition: true, align: 64)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !503, file: !503, line: 277, type: !466, isLocal: false, isDefinition: true, align: 64)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !503, file: !503, line: 286, type: !470, isLocal: false, isDefinition: true, align: 64)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !503, file: !503, line: 294, type: !466, isLocal: false, isDefinition: true, align: 64)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !503, file: !503, line: 334, type: !470, isLocal: false, isDefinition: true, align: 64)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !503, file: !503, line: 342, type: !470, isLocal: false, isDefinition: true, align: 64)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !503, file: !503, line: 352, type: !470, isLocal: false, isDefinition: true, align: 64)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !503, file: !503, line: 360, type: !470, isLocal: false, isDefinition: true, align: 64)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !503, file: !503, line: 370, type: !470, isLocal: false, isDefinition: true, align: 64)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !503, file: !503, line: 378, type: !470, isLocal: false, isDefinition: true, align: 64)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !503, file: !503, line: 388, type: !470, isLocal: false, isDefinition: true, align: 64)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !503, file: !503, line: 396, type: !470, isLocal: false, isDefinition: true, align: 64)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !536, file: !536, line: 91, type: !537, isLocal: false, isDefinition: true, align: 64)
!536 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 768, align: 64, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 12, lowerBound: 0)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !536, file: !536, line: 105, type: !459, isLocal: false, isDefinition: true, align: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !536, file: !536, line: 114, type: !459, isLocal: false, isDefinition: true, align: 64)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !536, file: !536, line: 123, type: !546, isLocal: false, isDefinition: true, align: 64)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 960, align: 64, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 15, lowerBound: 0)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !536, file: !536, line: 140, type: !470, isLocal: false, isDefinition: true, align: 64)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !536, file: !536, line: 148, type: !470, isLocal: false, isDefinition: true, align: 64)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !536, file: !536, line: 156, type: !459, isLocal: false, isDefinition: true, align: 64)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !557, file: !557, line: 8, type: !558, isLocal: false, isDefinition: true, align: 64)
!557 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, align: 64, elements: !344)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !557, file: !557, line: 16, type: !561, isLocal: false, isDefinition: true, align: 64)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 640, align: 64, elements: !381)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !557, file: !557, line: 21, type: !564, isLocal: false, isDefinition: true, align: 64)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 704, align: 64, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 11, lowerBound: 0)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !569, file: !569, line: 93, type: !470, isLocal: false, isDefinition: true, align: 64)
!569 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !569, file: !569, line: 103, type: !470, isLocal: false, isDefinition: true, align: 64)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !574, file: !574, line: 63, type: !575, isLocal: false, isDefinition: true, align: 64)
!574 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, align: 64, elements: !328)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !574, file: !574, line: 68, type: !466, isLocal: false, isDefinition: true, align: 64)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !580, file: !580, line: 57, type: !575, isLocal: false, isDefinition: true, align: 64)
!580 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !580, file: !580, line: 62, type: !575, isLocal: false, isDefinition: true, align: 64)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !585, file: !585, line: 81, type: !586, isLocal: false, isDefinition: true, align: 64)
!585 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !589, line: 1, type: !590, isLocal: true, isDefinition: true)
!589 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !547)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!597 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !597, line: 1, type: !590, isLocal: true, isDefinition: true)
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !647)
!647 = !{!648, !654, !656, !658, !663, !665, !670, !675, !680, !685}
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !651, isLocal: true, isDefinition: true)
!650 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 53, lowerBound: 0)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 60, lowerBound: 0)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !650, file: !650, line: 42, type: !165, isLocal: false, isDefinition: true, align: 8)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 70, lowerBound: 0)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 42, lowerBound: 0)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 59, lowerBound: 0)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 41, lowerBound: 0)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !650, line: 1, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 58, lowerBound: 0)
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !693)
!693 = !{!694, !700, !702, !704, !706}
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !696, line: 12, type: !697, isLocal: true, isDefinition: true)
!696 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 1, lowerBound: 0)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !696, line: 20, type: !697, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !696, line: 40, type: !327, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !696, line: 46, type: !338, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !696, line: 51, type: !338, isLocal: true, isDefinition: true)
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !709)
!709 = !{!710, !716}
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !712, file: !712, line: 71, type: !713, isLocal: false, isDefinition: true, align: 8)
!712 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 256, lowerBound: 0)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !712, file: !712, line: 100, type: !718, isLocal: false, isDefinition: true, align: 8)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 256, align: 8, elements: !339)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !720)
!720 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!724 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !725)
!725 = !{!726, !729, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !763, !765, !768, !770, !772, !774, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !875, !893, !898, !900, !902, !904, !906, !908, !910, !912, !924, !930, !938, !942, !947, !949, !951, !953, !962, !964, !972, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1036, !1042, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1113, !1118, !1123, !1128, !1130, !1132, !1134, !1139, !1141, !1143, !1145, !1147, !1149, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1206, !1208, !1210, !1215, !1217, !1219, !1221, !1223, !1225, !1230, !1232, !1234, !1236, !1238, !1240, !1245, !1247, !1249, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1276, !1278, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1297, !1299, !1304, !1306, !1311, !1316, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1340, !1342, !1344, !1346, !1348, !1350, !1355, !1357, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1376, !1378, !1380, !1382, !1384, !1389, !1391, !1396, !1398, !1400, !1402, !1404, !1407, !1409, !1411, !1413, !1415, !1417, !1419, !1421, !1423, !1425, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1444, !1446, !1448, !1451}
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !728, line: 393, type: !313, isLocal: true, isDefinition: true)
!728 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !728, file: !728, line: 393, type: !731, isLocal: false, isDefinition: true, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64, dwarfAddressSpace: 0)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !733)
!733 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !301, size: 128, align: 64)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !728, line: 394, type: !327, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !728, file: !728, line: 394, type: !731, isLocal: false, isDefinition: true, align: 64)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !728, line: 395, type: !389, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !728, file: !728, line: 395, type: !731, isLocal: false, isDefinition: true, align: 64)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !728, line: 396, type: !313, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !728, file: !728, line: 396, type: !731, isLocal: false, isDefinition: true, align: 64)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !728, line: 397, type: !327, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !728, file: !728, line: 397, type: !731, isLocal: false, isDefinition: true, align: 64)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !728, line: 398, type: !410, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !728, file: !728, line: 398, type: !731, isLocal: false, isDefinition: true, align: 64)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !728, line: 399, type: !108, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !728, file: !728, line: 399, type: !731, isLocal: false, isDefinition: true, align: 64)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !728, line: 400, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !565)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !728, file: !728, line: 400, type: !731, isLocal: false, isDefinition: true, align: 64)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !728, line: 401, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !538)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !728, file: !728, line: 401, type: !731, isLocal: false, isDefinition: true, align: 64)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !776, file: !776, line: 956, type: !777, isLocal: false, isDefinition: true, align: 64)
!776 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64, dwarfAddressSpace: 0)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !864, isLocal: false, isDefinition: true, align: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !865)
!865 = !{!90, !97, !92, !866, !867, !868, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !870, size: 128, align: 64, offset: 256)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 128, align: 64, elements: !698)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !872)
!872 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !873)
!873 = !{!445, !874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !304, size: 64, align: 64, offset: 64)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !877, isLocal: false, isDefinition: true, align: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !891}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !886, size: 320, align: 64, offset: 320)
!886 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !890, size: 256, align: 64, offset: 64)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !314)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !892, size: 160, align: 8, offset: 640)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 28, lowerBound: 0)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !590, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !422, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !762, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !767, isLocal: true, isDefinition: true)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !914, isLocal: false, isDefinition: true, align: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !915)
!915 = !{!879, !880, !881, !916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !918, size: 2304, align: 64, offset: 192)
!918 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !919)
!919 = !{!888, !920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !921, size: 2240, align: 64, offset: 64)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 35, lowerBound: 0)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !926, isLocal: false, isDefinition: true, align: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !927)
!927 = !{!90, !97, !92, !866, !867, !868, !928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !929, size: 384, align: 64, offset: 256)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 384, align: 64, elements: !328)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !932, isLocal: false, isDefinition: true, align: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !933)
!933 = !{!90, !97, !92, !934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !937, size: 144, align: 8, offset: 256)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !129)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !940, file: !940, line: 12, type: !941, isLocal: false, isDefinition: true, align: 8)
!940 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !940, line: 17, type: !944, isLocal: true, isDefinition: true)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 14, lowerBound: 0)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !940, line: 1, type: !55, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !940, line: 1, type: !389, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !955, isLocal: false, isDefinition: true, align: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !956)
!956 = !{!879, !880, !881, !916, !957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !958, size: 128, align: 64, offset: 192)
!958 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !959)
!959 = !{!888, !960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !961, size: 64, align: 64, offset: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !698)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !966, isLocal: false, isDefinition: true, align: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !967)
!967 = !{!90, !97, !92, !866, !867, !868, !968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !969, align: 64, offset: 256)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, align: 64, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 0, lowerBound: 0)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !974, isLocal: false, isDefinition: true, align: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !975)
!975 = !{!879, !880, !881, !882, !883, !884, !976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !958, size: 128, align: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !978, size: 176, align: 8, offset: 448)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 22, lowerBound: 0)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !940, line: 250, type: !118, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !940, line: 251, type: !590, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !940, line: 252, type: !590, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !940, line: 278, type: !118, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !940, line: 280, type: !118, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !940, line: 282, type: !118, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !940, line: 284, type: !118, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !940, line: 286, type: !118, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !940, line: 288, type: !118, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !940, line: 290, type: !118, isLocal: true, isDefinition: true)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !940, line: 294, type: !118, isLocal: true, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !940, line: 295, type: !590, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !940, line: 296, type: !590, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !940, line: 301, type: !118, isLocal: true, isDefinition: true)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !940, line: 303, type: !590, isLocal: true, isDefinition: true)
!1011 = !DIGlobalVariableExpression(var: !1012, expr: !DIExpression())
!1012 = distinct !DIGlobalVariable(scope: null, file: !940, line: 306, type: !118, isLocal: true, isDefinition: true)
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression())
!1014 = distinct !DIGlobalVariable(scope: null, file: !940, line: 308, type: !590, isLocal: true, isDefinition: true)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(scope: null, file: !1017, line: 16, type: !108, isLocal: true, isDefinition: true)
!1017 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !350, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !373, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !955, isLocal: false, isDefinition: true, align: 64)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1032, isLocal: false, isDefinition: true, align: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1033)
!1033 = !{!879, !880, !881, !882, !883, !884, !976, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1035, size: 136, align: 8, offset: 448)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1038, isLocal: false, isDefinition: true, align: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1039)
!1039 = !{!90, !97, !92, !866, !867, !868, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1041, size: 256, align: 64, offset: 256)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 256, align: 64, elements: !119)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1044, isLocal: false, isDefinition: true, align: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1045)
!1045 = !{!90, !97, !92, !934, !935, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1047, size: 184, align: 8, offset: 256)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !124)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !955, isLocal: false, isDefinition: true, align: 64)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !1017, line: 1, type: !318, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !728, line: 60, type: !108, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !728, line: 62, type: !313, isLocal: true, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !728, line: 64, type: !327, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !728, line: 66, type: !313, isLocal: true, isDefinition: true)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !728, line: 68, type: !389, isLocal: true, isDefinition: true)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !728, line: 70, type: !389, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !728, line: 72, type: !389, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !728, line: 74, type: !313, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !728, line: 76, type: !389, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !728, line: 78, type: !373, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !728, line: 80, type: !373, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !728, line: 82, type: !373, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !728, line: 84, type: !108, isLocal: true, isDefinition: true)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !728, line: 86, type: !108, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !728, line: 88, type: !108, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !728, line: 90, type: !368, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !728, line: 92, type: !380, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !728, line: 94, type: !373, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !728, line: 96, type: !944, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !728, line: 98, type: !313, isLocal: true, isDefinition: true)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(scope: null, file: !728, line: 100, type: !368, isLocal: true, isDefinition: true)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(scope: null, file: !728, line: 102, type: !327, isLocal: true, isDefinition: true)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !728, line: 104, type: !389, isLocal: true, isDefinition: true)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !728, line: 106, type: !389, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !728, line: 108, type: !313, isLocal: true, isDefinition: true)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !728, line: 110, type: !327, isLocal: true, isDefinition: true)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(scope: null, file: !728, line: 112, type: !373, isLocal: true, isDefinition: true)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !728, line: 114, type: !313, isLocal: true, isDefinition: true)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1110, isLocal: true, isDefinition: true)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 44, lowerBound: 0)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1115, isLocal: true, isDefinition: true)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 40, lowerBound: 0)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1120, isLocal: true, isDefinition: true)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 36, lowerBound: 0)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1125, isLocal: true, isDefinition: true)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 38, lowerBound: 0)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !343, isLocal: true, isDefinition: true)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !864, isLocal: false, isDefinition: true, align: 64)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1136, isLocal: false, isDefinition: true, align: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1137)
!1137 = !{!90, !97, !92, !934, !935, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !978, size: 176, align: 8, offset: 256)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !955, isLocal: false, isDefinition: true, align: 64)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1059, type: !590, isLocal: true, isDefinition: true)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !651, isLocal: true, isDefinition: true)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !74, isLocal: true, isDefinition: true)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !728, line: 965, type: !108, isLocal: true, isDefinition: true)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression())
!1150 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1151, isLocal: true, isDefinition: true)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 27, lowerBound: 0)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !728, line: 329, type: !108, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !728, line: 331, type: !108, isLocal: true, isDefinition: true)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !728, line: 338, type: !373, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !728, line: 338, type: !697, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !728, line: 340, type: !389, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !728, line: 344, type: !697, isLocal: true, isDefinition: true)
!1166 = !DIGlobalVariableExpression(var: !1167, expr: !DIExpression())
!1167 = distinct !DIGlobalVariable(scope: null, file: !728, line: 346, type: !118, isLocal: true, isDefinition: true)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !728, line: 348, type: !697, isLocal: true, isDefinition: true)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !728, line: 348, type: !697, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !728, line: 350, type: !313, isLocal: true, isDefinition: true)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !728, line: 350, type: !697, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !728, line: 354, type: !368, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !728, line: 356, type: !410, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !728, line: 359, type: !697, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !728, line: 359, type: !697, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !1185, expr: !DIExpression())
!1185 = distinct !DIGlobalVariable(scope: null, file: !728, line: 361, type: !697, isLocal: true, isDefinition: true)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !728, line: 365, type: !697, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(scope: null, file: !728, line: 368, type: !118, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(scope: null, file: !728, line: 372, type: !767, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !728, line: 356, type: !410, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !318, isLocal: true, isDefinition: true)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !343, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1212, type: !338, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !343, isLocal: true, isDefinition: true)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !343, isLocal: true, isDefinition: true)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !318, isLocal: true, isDefinition: true)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !55, isLocal: true, isDefinition: true)
!1210 = !DIGlobalVariableExpression(var: !1211, expr: !DIExpression())
!1211 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1212, isLocal: true, isDefinition: true)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 31, lowerBound: 0)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !682, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !776, line: 441, type: !313, isLocal: true, isDefinition: true)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !776, line: 650, type: !389, isLocal: true, isDefinition: true)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1222 = distinct !DIGlobalVariable(scope: null, file: !776, line: 658, type: !389, isLocal: true, isDefinition: true)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(scope: null, file: !776, line: 667, type: !389, isLocal: true, isDefinition: true)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression())
!1226 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1227, isLocal: true, isDefinition: true)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 37, lowerBound: 0)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !672, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !776, line: 824, type: !327, isLocal: true, isDefinition: true)
!1234 = !DIGlobalVariableExpression(var: !1235, expr: !DIExpression())
!1235 = distinct !DIGlobalVariable(scope: null, file: !776, line: 843, type: !389, isLocal: true, isDefinition: true)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(scope: null, file: !776, line: 630, type: !108, isLocal: true, isDefinition: true)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1425, type: !1227, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1425, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 29, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !776, line: 875, type: !313, isLocal: true, isDefinition: true)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(scope: null, file: !776, line: 407, type: !1120, isLocal: true, isDefinition: true)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(scope: null, file: !776, line: 407, type: !1251, isLocal: true, isDefinition: true)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 19, lowerBound: 0)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !318, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !776, line: 882, type: !389, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2067, type: !767, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !677, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2085, type: !590, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2090, type: !762, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2101, type: !762, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !776, line: 598, type: !389, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !776, line: 573, type: !389, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1957, type: !313, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !318, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1280, isLocal: true, isDefinition: true)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 34, lowerBound: 0)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1041, type: !389, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !776, line: 488, type: !327, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1227, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !776, line: 247, type: !389, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !776, line: 201, type: !697, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !776, line: 209, type: !67, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !776, line: 806, type: !327, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1117, type: !410, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1301, isLocal: true, isDefinition: true)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 50, lowerBound: 0)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1074, type: !108, isLocal: true, isDefinition: true)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1308, isLocal: true, isDefinition: true)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 39, lowerBound: 0)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1313, isLocal: true, isDefinition: true)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 45, lowerBound: 0)
!1316 = !DIGlobalVariableExpression(var: !1317, expr: !DIExpression())
!1317 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1047, type: !123, isLocal: true, isDefinition: true)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1062, type: !1151, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1398, type: !350, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1411, type: !1324, isLocal: true, isDefinition: true)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 26, lowerBound: 0)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1227, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1237, type: !318, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1237, type: !895, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1275, type: !108, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1337, isLocal: true, isDefinition: true)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 43, lowerBound: 0)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1308, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1341, type: !380, isLocal: true, isDefinition: true)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1328, type: !410, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1294, type: !373, isLocal: true, isDefinition: true)
!1348 = !DIGlobalVariableExpression(var: !1349, expr: !DIExpression())
!1349 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1352, isLocal: true, isDefinition: true)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 47, lowerBound: 0)
!1355 = !DIGlobalVariableExpression(var: !1356, expr: !DIExpression())
!1356 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1987, type: !762, isLocal: true, isDefinition: true)
!1357 = !DIGlobalVariableExpression(var: !1358, expr: !DIExpression())
!1358 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1359, isLocal: true, isDefinition: true)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 55, lowerBound: 0)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !651, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1352, type: !368, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1315, type: !108, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !776, line: 734, type: !389, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1308, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !776, line: 642, type: !697, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !776, line: 642, type: !108, isLocal: true, isDefinition: true)
!1376 = !DIGlobalVariableExpression(var: !1377, expr: !DIExpression())
!1377 = distinct !DIGlobalVariable(scope: null, file: !776, line: 541, type: !313, isLocal: true, isDefinition: true)
!1378 = !DIGlobalVariableExpression(var: !1379, expr: !DIExpression())
!1379 = distinct !DIGlobalVariable(scope: null, file: !776, line: 273, type: !422, isLocal: true, isDefinition: true)
!1380 = !DIGlobalVariableExpression(var: !1381, expr: !DIExpression())
!1381 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !318, isLocal: true, isDefinition: true)
!1382 = !DIGlobalVariableExpression(var: !1383, expr: !DIExpression())
!1383 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !55, isLocal: true, isDefinition: true)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1386, isLocal: true, isDefinition: true)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 46, lowerBound: 0)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1218, type: !410, isLocal: true, isDefinition: true)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1393, isLocal: true, isDefinition: true)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 48, lowerBound: 0)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1398 = !DIGlobalVariableExpression(var: !1399, expr: !DIExpression())
!1399 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1406, isLocal: true, isDefinition: true)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !922)
!1407 = !DIGlobalVariableExpression(var: !1408, expr: !DIExpression())
!1408 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !776, file: !776, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1716, type: !343, isLocal: true, isDefinition: true)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1716, type: !343, isLocal: true, isDefinition: true)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1791, type: !944, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !313, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !373, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1308, isLocal: true, isDefinition: true)
!1425 = !DIGlobalVariableExpression(var: !1426, expr: !DIExpression())
!1426 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1825, type: !1427, isLocal: true, isDefinition: true)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 21, lowerBound: 0)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1825, type: !697, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !672, isLocal: true, isDefinition: true)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1879, type: !762, isLocal: true, isDefinition: true)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1903, type: !373, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1280, isLocal: true, isDefinition: true)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1212, isLocal: true, isDefinition: true)
!1442 = !DIGlobalVariableExpression(var: !1443, expr: !DIExpression())
!1443 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2125, type: !108, isLocal: true, isDefinition: true)
!1444 = !DIGlobalVariableExpression(var: !1445, expr: !DIExpression())
!1445 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1337, isLocal: true, isDefinition: true)
!1446 = !DIGlobalVariableExpression(var: !1447, expr: !DIExpression())
!1447 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1448 = !DIGlobalVariableExpression(var: !1449, expr: !DIExpression())
!1449 = distinct !DIGlobalVariable(scope: null, file: !1450, line: 1, type: !1151, isLocal: true, isDefinition: true)
!1450 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !1450, line: 1, type: !1115, isLocal: true, isDefinition: true)
!1453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1454)
!1454 = !{!1455, !1458, !1460, !1462}
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !1457, line: 1, type: !767, isLocal: true, isDefinition: true)
!1457 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !1457, line: 1, type: !672, isLocal: true, isDefinition: true)
!1464 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1465)
!1465 = !{!0, !50, !52, !1466, !1468, !1470, !1476, !1478, !1480, !58, !61, !1482, !65, !1484, !70, !1486, !1488, !1490, !1493, !72, !77, !83, !1495}
!1466 = !DIGlobalVariableExpression(var: !1467, expr: !DIExpression())
!1467 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1468 = !DIGlobalVariableExpression(var: !1469, expr: !DIExpression())
!1469 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1470 = !DIGlobalVariableExpression(var: !1471, expr: !DIExpression())
!1471 = distinct !DIGlobalVariable(scope: null, file: !1472, line: 1, type: !1473, isLocal: true, isDefinition: true)
!1472 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 62, lowerBound: 0)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !1472, line: 1, type: !1473, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !767, isLocal: true, isDefinition: true)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !113, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !767, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !767, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !313, isLocal: true, isDefinition: true)
!1490 = !DIGlobalVariableExpression(var: !1491, expr: !DIExpression())
!1491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1492, isLocal: true, isDefinition: true)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !979)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !368, isLocal: true, isDefinition: true)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1499)
!1499 = !{!1500, !1503, !1505, !1508, !1510, !1513, !1515, !1517, !1519, !1521, !1524, !1526, !1528, !1531, !1534, !1537, !100, !1539, !103, !1541, !1558, !1560, !1563, !1566, !105, !111, !116, !1568, !1570, !121, !1572, !126, !1574, !1576, !1578, !1580, !1582, !1584, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !131, !1631, !134, !1633, !137, !1639, !1641, !1643, !1645, !139, !141, !1647, !1649, !1651, !1653, !1655, !143, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !145, !1721, !1723, !1726, !1728}
!1500 = !DIGlobalVariableExpression(var: !1501, expr: !DIExpression())
!1501 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1502, file: !1502, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1502 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1502, file: !1502, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1507, file: !1507, line: 9, type: !460, isLocal: false, isDefinition: true, align: 64)
!1507 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !133, file: !133, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1510 = !DIGlobalVariableExpression(var: !1511, expr: !DIExpression())
!1511 = distinct !DIGlobalVariable(scope: null, file: !1512, line: 210, type: !1492, isLocal: true, isDefinition: true)
!1512 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !1512, line: 267, type: !1492, isLocal: true, isDefinition: true)
!1515 = !DIGlobalVariableExpression(var: !1516, expr: !DIExpression())
!1516 = distinct !DIGlobalVariable(scope: null, file: !1512, line: 348, type: !67, isLocal: true, isDefinition: true)
!1517 = !DIGlobalVariableExpression(var: !1518, expr: !DIExpression())
!1518 = distinct !DIGlobalVariable(scope: null, file: !1512, line: 358, type: !123, isLocal: true, isDefinition: true)
!1519 = !DIGlobalVariableExpression(var: !1520, expr: !DIExpression())
!1520 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1512, file: !1512, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(scope: null, file: !1523, line: 1, type: !113, isLocal: true, isDefinition: true)
!1523 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1524 = !DIGlobalVariableExpression(var: !1525, expr: !DIExpression())
!1525 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(scope: null, file: !1530, line: 13, type: !108, isLocal: true, isDefinition: true)
!1530 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1533, file: !1533, line: 142, type: !287, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1536, file: !1536, line: 10, type: !301, isLocal: false, isDefinition: true, align: 64)
!1536 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !102, file: !102, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !102, line: 61, type: !682, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !102, file: !102, line: 112, type: !1543, isLocal: false, isDefinition: true, align: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1544)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(scope: null, file: !102, line: 135, type: !1280, isLocal: true, isDefinition: true)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !1562, line: 616, type: !895, isLocal: true, isDefinition: true)
!1562 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 80, type: !895, isLocal: true, isDefinition: true)
!1565 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 89, type: !128, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !107, line: 103, type: !1492, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !107, line: 122, type: !128, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !107, line: 189, type: !55, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !107, line: 199, type: !128, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !107, line: 205, type: !113, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !107, line: 212, type: !1227, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !107, line: 217, type: !1492, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !107, line: 222, type: !944, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !107, line: 227, type: !944, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !107, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !895, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1492, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !123, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !350, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !327, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !313, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !313, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !327, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !313, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !313, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !118, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !118, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !313, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !327, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !327, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !313, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !389, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1533, line: 36, type: !422, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1533, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !133, file: !133, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !133, file: !133, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !305, !310}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !133, line: 160, type: !338, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !133, line: 163, type: !373, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !133, line: 165, type: !373, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !133, line: 167, type: !108, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !133, file: !133, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !133, file: !133, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !133, file: !133, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !133, line: 317, type: !1151, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !133, file: !133, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !133, line: 365, type: !350, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !133, line: 382, type: !350, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !133, line: 392, type: !350, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !133, file: !133, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !970)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !8, !10, !12, !1675, !44, !46, !48, !49}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!20, !22, !24, !25, !1679, !27}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !133, line: 458, type: !1212, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !133, line: 514, type: !1151, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1687, file: !1687, line: 7, type: !1688, isLocal: false, isDefinition: true, align: 64)
!1687 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1691)
!1691 = !{!1692, !1693, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1688, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1694, size: 64, align: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64, dwarfAddressSpace: 0)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1699, size: 64, align: 64)
!1699 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1699, size: 64, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !287, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !442)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !287, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !327, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !327, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !327, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !422, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !147, file: !147, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !147, file: !147, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !147, file: !147, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !147, file: !147, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !338, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !338, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !368, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1739)
!1736 = !DISubroutineType(cc: DW_CC_nocall, types: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1739 = !{!1740, !1741}
!1740 = !DILocalVariable(name: "m", arg: 1, scope: !1735, file: !54, line: 49, type: !1738)
!1741 = !DILocalVariable(name: "old", scope: !1735, file: !54, line: 50, type: !43)
!1742 = !DILocation(line: 49, column: 17, scope: !1735)
!1743 = !DILocation(line: 50, column: 12, scope: !1735)
!1744 = !DILocation(line: 50, column: 14, scope: !1735)
!1745 = !DILocalVariable(name: "x", arg: 1, scope: !1746, file: !1747, line: 153, type: !1750)
!1746 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1747, file: !1747, line: 153, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1751)
!1747 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1750, !43}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1751 = !{!1745, !1752}
!1752 = !DILocalVariable(name: "new", arg: 2, scope: !1746, file: !1747, line: 153, type: !43)
!1753 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 50, column: 24, scope: !1735)
!1755 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1754)
!1756 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1754)
!1757 = !DILocalVariable(name: "addr", arg: 1, scope: !1758, file: !1759, line: 77, type: !1762)
!1758 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1759, file: !1759, line: 77, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1763)
!1759 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1762, !43}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1763 = !{!1757, !1764}
!1764 = !DILocalVariable(name: "new", arg: 2, scope: !1758, file: !1759, line: 77, type: !43)
!1765 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1754)
!1767 = !DILocation(line: 50, column: 5, scope: !1735)
!1768 = !DILocation(line: 50, column: 29, scope: !1735)
!1769 = !DILocation(line: 0, scope: !1735)
!1770 = !DILocation(line: 52, column: 8, scope: !1735)
!1771 = !DILocation(line: 55, column: 3, scope: !1735)
!1772 = !DILocalVariable(name: "f", arg: 1, scope: !1773, file: !1774, line: 53, type: !1777)
!1773 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1774, file: !1774, line: 53, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !1778)
!1774 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1778 = !{!1772}
!1779 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 55, column: 15, scope: !1735)
!1781 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !1780)
!1782 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !1780)
!1783 = !DILocation(line: 57, column: 2, scope: !1735)
!1784 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!3}
!1787 = !{!1788, !1789, !1790, !1792}
!1788 = !DILocalVariable(name: "t", arg: 1, scope: !1784, file: !2, line: 125, type: !3)
!1789 = !DILocalVariable(name: "found", scope: !1784, file: !2, line: 133, type: !47)
!1790 = !DILocalVariable(name: "q", scope: !1784, file: !2, line: 134, type: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1792 = !DILocalVariable(name: "otherGoroutines", scope: !1784, file: !2, line: 99, type: !43)
!1793 = !DILocation(line: 125, column: 6, scope: !1784)
!1794 = !DILocalVariable(name: "m", arg: 1, scope: !1795, file: !54, line: 31, type: !1738)
!1795 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1797)
!1796 = !DISubroutineType(types: !1737)
!1797 = !{!1794}
!1798 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 132, column: 21, scope: !1784)
!1800 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !1799)
!1801 = !DILocalVariable(name: "x", arg: 1, scope: !1802, file: !1747, line: 156, type: !1750)
!1802 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1747, file: !1747, line: 156, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1750, !43, !43}
!1805 = !{!1801, !1806, !1807}
!1806 = !DILocalVariable(name: "old", arg: 2, scope: !1802, file: !1747, line: 156, type: !43)
!1807 = !DILocalVariable(name: "new", arg: 3, scope: !1802, file: !1747, line: 156, type: !43)
!1808 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !1799)
!1810 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !1809)
!1811 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !1809)
!1812 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !1809)
!1813 = !DILocalVariable(name: "addr", arg: 1, scope: !1814, file: !1759, line: 99, type: !1762)
!1814 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1759, file: !1759, line: 99, type: !1815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1762, !43, !43}
!1817 = !{!1813, !1818, !1819}
!1818 = !DILocalVariable(name: "old", arg: 2, scope: !1814, file: !1759, line: 99, type: !43)
!1819 = !DILocalVariable(name: "new", arg: 3, scope: !1814, file: !1759, line: 99, type: !43)
!1820 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !1809)
!1822 = !DILocation(line: 0, scope: !1795, inlinedAt: !1799)
!1823 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !1799)
!1824 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !1799)
!1826 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1825)
!1827 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1825)
!1828 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1825)
!1830 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !1799)
!1831 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !1799)
!1832 = !DILocalVariable(name: "f", arg: 1, scope: !1833, file: !1774, line: 25, type: !1777)
!1833 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1774, file: !1774, line: 25, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1777, !43}
!1836 = !{!1832, !1837}
!1837 = !DILocalVariable(name: "cmp", arg: 2, scope: !1833, file: !1774, line: 25, type: !43)
!1838 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !1799)
!1840 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !1839)
!1841 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !1839)
!1842 = !DILocation(line: 133, column: 2, scope: !1784)
!1843 = !DILocation(line: 134, column: 6, scope: !1784)
!1844 = !DILocation(line: 134, column: 25, scope: !1784)
!1845 = !DILocation(line: 134, column: 28, scope: !1784)
!1846 = !DILocation(line: 0, scope: !1784)
!1847 = !DILocation(line: 134, column: 52, scope: !1784)
!1848 = !DILocation(line: 134, column: 36, scope: !1784)
!1849 = !DILocation(line: 134, column: 26, scope: !1784)
!1850 = !DILocation(line: 135, column: 7, scope: !1784)
!1851 = !DILocation(line: 135, column: 12, scope: !1784)
!1852 = !DILocation(line: 135, column: 9, scope: !1784)
!1853 = !DILocation(line: 134, column: 43, scope: !1784)
!1854 = !DILocation(line: 136, column: 5, scope: !1784)
!1855 = !DILocation(line: 136, column: 9, scope: !1784)
!1856 = !DILocation(line: 136, column: 17, scope: !1784)
!1857 = !DILocation(line: 136, column: 4, scope: !1784)
!1858 = !DILocation(line: 137, column: 4, scope: !1784)
!1859 = !DILocation(line: 141, column: 2, scope: !1784)
!1860 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 142, column: 23, scope: !1784)
!1862 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !1861)
!1863 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !1861)
!1865 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1864)
!1866 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1864)
!1867 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1864)
!1869 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !1861)
!1870 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !1861)
!1871 = !DILocation(line: 0, scope: !1735, inlinedAt: !1861)
!1872 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !1861)
!1873 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !1861)
!1874 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !1861)
!1876 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !1875)
!1877 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !1875)
!1878 = !DILocation(line: 145, column: 6, scope: !1784)
!1879 = !DILocation(line: 148, column: 2, scope: !1784)
!1880 = !DILocation(line: 142, column: 23, scope: !1784)
!1881 = !DILocation(line: 146, column: 15, scope: !1784)
!1882 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!60}
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "sig", arg: 1, scope: !1882, file: !2, line: 266, type: !60)
!1887 = !DILocalVariable(name: "stackBottom", scope: !1882, file: !2, line: 28, type: !21)
!1888 = !DILocation(line: 266, column: 6, scope: !1882)
!1889 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !1894)
!1890 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1892)
!1891 = !DISubroutineType(types: !15)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "t", scope: !1890, file: !2, line: 62, type: !3)
!1894 = distinct !DILocation(line: 268, column: 9, scope: !1882)
!1895 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !1894)
!1896 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !1894)
!1897 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !1894)
!1898 = !DILocation(line: 0, scope: !1890, inlinedAt: !1894)
!1899 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !1894)
!1900 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !1894)
!1901 = !DILocation(line: 58, column: 6, scope: !1902, inlinedAt: !1903)
!1902 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1533, file: !1533, line: 58, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!1903 = distinct !DILocation(line: 268, column: 49, scope: !1882)
!1904 = !DILocation(line: 268, column: 39, scope: !1882)
!1905 = !DILocation(line: 268, column: 18, scope: !1882)
!1906 = !DILocalVariable(name: "wg", arg: 1, scope: !1907, file: !2, line: 163, type: !1910)
!1907 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !1911)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!1911 = !{!1906}
!1912 = !DILocation(line: 163, column: 22, scope: !1907, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 271, column: 20, scope: !1882)
!1914 = !DILocation(line: 164, column: 5, scope: !1907, inlinedAt: !1913)
!1915 = !DILocalVariable(name: "x", arg: 1, scope: !1916, file: !1747, line: 161, type: !1750)
!1916 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1747, file: !1747, line: 161, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1917)
!1917 = !{!1915, !1918}
!1918 = !DILocalVariable(name: "delta", arg: 2, scope: !1916, file: !1747, line: 161, type: !43)
!1919 = !DILocation(line: 161, column: 18, scope: !1916, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 164, column: 13, scope: !1907, inlinedAt: !1913)
!1921 = !DILocation(line: 161, column: 69, scope: !1916, inlinedAt: !1920)
!1922 = !DILocation(line: 161, column: 74, scope: !1916, inlinedAt: !1920)
!1923 = !DILocalVariable(name: "addr", arg: 1, scope: !1924, file: !1759, line: 123, type: !1762)
!1924 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1759, file: !1759, line: 123, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1925)
!1925 = !{!1923, !1926}
!1926 = !DILocalVariable(name: "delta", arg: 2, scope: !1924, file: !1759, line: 123, type: !43)
!1927 = !DILocation(line: 123, column: 6, scope: !1924, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 161, column: 67, scope: !1916, inlinedAt: !1920)
!1929 = !DILocation(line: 164, column: 26, scope: !1907, inlinedAt: !1913)
!1930 = !DILocation(line: 0, scope: !1907, inlinedAt: !1913)
!1931 = !DILocation(line: 165, column: 3, scope: !1907, inlinedAt: !1913)
!1932 = !DILocalVariable(name: "f", arg: 1, scope: !1933, file: !1774, line: 58, type: !1777)
!1933 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1774, file: !1774, line: 58, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !1934)
!1934 = !{!1932}
!1935 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 165, column: 15, scope: !1907, inlinedAt: !1913)
!1937 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !1936)
!1938 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !1936)
!1939 = !DILocalVariable(name: "x", arg: 1, scope: !1940, file: !1747, line: 147, type: !1750)
!1940 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1747, file: !1747, line: 147, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1750}
!1943 = !{!1939}
!1944 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 274, column: 18, scope: !1882)
!1946 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !1945)
!1947 = !DILocalVariable(name: "addr", arg: 1, scope: !1948, file: !1759, line: 183, type: !1762)
!1948 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1759, file: !1759, line: 183, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1762}
!1951 = !{!1947}
!1952 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !1945)
!1954 = !DILocation(line: 274, column: 21, scope: !1882)
!1955 = !DILocation(line: 0, scope: !1882)
!1956 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 275, column: 15, scope: !1882)
!1958 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !1957)
!1959 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !1957)
!1960 = !DILocation(line: 163, column: 22, scope: !1907, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 279, column: 20, scope: !1882)
!1962 = !DILocation(line: 164, column: 5, scope: !1907, inlinedAt: !1961)
!1963 = !DILocation(line: 161, column: 18, scope: !1916, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 164, column: 13, scope: !1907, inlinedAt: !1961)
!1965 = !DILocation(line: 161, column: 69, scope: !1916, inlinedAt: !1964)
!1966 = !DILocation(line: 161, column: 74, scope: !1916, inlinedAt: !1964)
!1967 = !DILocation(line: 123, column: 6, scope: !1924, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 161, column: 67, scope: !1916, inlinedAt: !1964)
!1969 = !DILocation(line: 164, column: 26, scope: !1907, inlinedAt: !1961)
!1970 = !DILocation(line: 0, scope: !1907, inlinedAt: !1961)
!1971 = !DILocation(line: 165, column: 3, scope: !1907, inlinedAt: !1961)
!1972 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 165, column: 15, scope: !1907, inlinedAt: !1961)
!1974 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !1973)
!1975 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !1973)
!1976 = !DILocation(line: 280, column: 2, scope: !1882)
!1977 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !102, file: !102, line: 68, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !1980)
!1978 = !DISubroutineType(cc: DW_CC_nocall, types: !1979)
!1979 = !{!21, !9}
!1980 = !{!1981, !1982, !1983}
!1981 = !DILocalVariable(name: "size", arg: 1, scope: !1977, file: !102, line: 68, type: !21)
!1982 = !DILocalVariable(name: "layout", arg: 2, scope: !1977, file: !102, line: 68, type: !9)
!1983 = !DILocalVariable(name: "ptr", scope: !1977, file: !102, line: 74, type: !9)
!1984 = !DILocation(line: 68, column: 6, scope: !1977)
!1985 = !DILocation(line: 69, column: 5, scope: !1977)
!1986 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 73, column: 13, scope: !1977)
!1988 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !1987)
!1989 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !1987)
!1991 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !1990)
!1992 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !1990)
!1993 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !1990)
!1994 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !1990)
!1996 = !DILocation(line: 0, scope: !1795, inlinedAt: !1987)
!1997 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !1987)
!1998 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !1987)
!2000 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1999)
!2001 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1999)
!2002 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1999)
!2004 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !1987)
!2005 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !1987)
!2006 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !1987)
!2008 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2007)
!2009 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2007)
!2010 = !DILocation(line: 74, column: 6, scope: !1977)
!2011 = !DILocation(line: 75, column: 5, scope: !1977)
!2012 = !DILocation(line: 75, column: 12, scope: !1977)
!2013 = !DILocation(line: 0, scope: !1977)
!2014 = !DILocation(line: 79, column: 29, scope: !1977)
!2015 = !DILocation(line: 79, column: 28, scope: !1977)
!2016 = !DILocation(line: 79, column: 3, scope: !1977)
!2017 = !DILocation(line: 82, column: 11, scope: !1977)
!2018 = !DILocation(line: 82, column: 16, scope: !1977)
!2019 = !DILocalVariable(name: "ptr", arg: 1, scope: !2020, file: !1533, line: 53, type: !9)
!2020 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1533, file: !1533, line: 53, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!9, !21}
!2023 = !{!2019, !2024}
!2024 = !DILocalVariable(name: "size", arg: 2, scope: !2020, file: !1533, line: 53, type: !21)
!2025 = !DILocation(line: 53, column: 6, scope: !2020, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 82, column: 10, scope: !1977)
!2027 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 239, column: 17, scope: !2029, inlinedAt: !2033)
!2029 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !2, file: !2, line: 237, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !2030)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "otherGoroutines", scope: !2029, file: !2, line: 99, type: !43)
!2032 = !DILocalVariable(name: "scanWaitGroup", scope: !2029, file: !2, line: 151, type: !79)
!2033 = distinct !DILocation(line: 28, column: 20, scope: !2034, inlinedAt: !2036)
!2034 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !2035, file: !2035, line: 27, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2035 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2036 = distinct !DILocation(line: 90, column: 15, scope: !1977)
!2037 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2028)
!2038 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2028)
!2040 = !DILocation(line: 239, column: 20, scope: !2029, inlinedAt: !2033)
!2041 = !DILocation(line: 0, scope: !2029, inlinedAt: !2033)
!2042 = !DILocation(line: 245, column: 32, scope: !2029, inlinedAt: !2033)
!2043 = !DILocation(line: 245, column: 2, scope: !2029, inlinedAt: !2033)
!2044 = !DILocalVariable(name: "x", arg: 1, scope: !2045, file: !1747, line: 150, type: !1750)
!2045 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1747, file: !1747, line: 150, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !2046)
!2046 = !{!2044, !2047}
!2047 = !DILocalVariable(name: "val", arg: 2, scope: !2045, file: !1747, line: 150, type: !43)
!2048 = !DILocation(line: 150, column: 18, scope: !2045, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 248, column: 15, scope: !2029, inlinedAt: !2033)
!2050 = !DILocation(line: 150, column: 51, scope: !2045, inlinedAt: !2049)
!2051 = !DILocation(line: 150, column: 56, scope: !2045, inlinedAt: !2049)
!2052 = !DILocalVariable(name: "addr", arg: 1, scope: !2053, file: !1759, line: 205, type: !1762)
!2053 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1759, file: !1759, line: 205, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !2054)
!2054 = !{!2052, !2055}
!2055 = !DILocalVariable(name: "val", arg: 2, scope: !2053, file: !1759, line: 205, type: !43)
!2056 = !DILocation(line: 205, column: 6, scope: !2053, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 150, column: 49, scope: !2045, inlinedAt: !2049)
!2058 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 251, column: 17, scope: !2029, inlinedAt: !2033)
!2060 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !2059)
!2061 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !2059)
!2062 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 254, column: 23, scope: !2029, inlinedAt: !2033)
!2064 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2063)
!2065 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2063)
!2067 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2066)
!2068 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2066)
!2069 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2066)
!2071 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !2063)
!2072 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2063)
!2073 = !DILocation(line: 0, scope: !1735, inlinedAt: !2063)
!2074 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2063)
!2075 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2063)
!2076 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2063)
!2078 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2077)
!2079 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2077)
!2080 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 91, column: 15, scope: !1977)
!2082 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2081)
!2083 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2081)
!2085 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2084)
!2086 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2084)
!2087 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2084)
!2089 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !2081)
!2090 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2081)
!2091 = !DILocation(line: 0, scope: !1735, inlinedAt: !2081)
!2092 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2081)
!2093 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2081)
!2094 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2081)
!2096 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2095)
!2097 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2095)
!2098 = !DILocation(line: 92, column: 5, scope: !1977)
!2099 = !DILocation(line: 92, column: 9, scope: !1977)
!2100 = !DILocation(line: 93, column: 15, scope: !1977)
!2101 = !DILocation(line: 86, column: 22, scope: !1977)
!2102 = !DILocation(line: 86, column: 21, scope: !1977)
!2103 = !DILocation(line: 86, column: 3, scope: !1977)
!2104 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !107, file: !107, line: 85, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2107)
!2105 = !DISubroutineType(cc: DW_CC_nocall, types: !2106)
!2106 = !{!301}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "msg", arg: 1, scope: !2104, file: !107, line: 85, type: !301)
!2109 = !DILocation(line: 85, column: 6, scope: !2104)
!2110 = !DILocation(line: 88, column: 30, scope: !2104)
!2111 = !DILocation(line: 88, column: 35, scope: !2104)
!2112 = !DILocation(line: 88, column: 16, scope: !2104)
!2113 = !DILocation(line: 89, column: 2, scope: !2104)
!2114 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !107, file: !107, line: 91, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2117)
!2115 = !DISubroutineType(cc: DW_CC_nocall, types: !2116)
!2116 = !{!9, !301}
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "addr", arg: 1, scope: !2114, file: !107, line: 91, type: !9)
!2119 = !DILocalVariable(name: "msg", arg: 2, scope: !2114, file: !107, line: 91, type: !301)
!2120 = !DILocation(line: 91, column: 6, scope: !2114)
!2121 = !DILocation(line: 99, column: 14, scope: !2114)
!2122 = !DILocation(line: 100, column: 20, scope: !2114)
!2123 = !DILocation(line: 100, column: 19, scope: !2114)
!2124 = !DILocation(line: 100, column: 26, scope: !2114)
!2125 = !DILocation(line: 100, column: 11, scope: !2114)
!2126 = !DILocation(line: 101, column: 14, scope: !2114)
!2127 = !DILocation(line: 105, column: 14, scope: !2114)
!2128 = !DILocation(line: 105, column: 13, scope: !2114)
!2129 = !DILocation(line: 106, column: 9, scope: !2114)
!2130 = !DILocation(line: 107, column: 7, scope: !2114)
!2131 = !DILocation(line: 108, column: 2, scope: !2114)
!2132 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2133)
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "s", arg: 1, scope: !2132, file: !1602, line: 12, type: !301)
!2135 = !DILocalVariable(name: "i", scope: !2132, file: !1602, line: 13, type: !2136)
!2136 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!2137 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2143)
!2138 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !133, file: !133, line: 214, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!165}
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "c", arg: 1, scope: !2138, file: !133, line: 214, type: !165)
!2143 = distinct !DILocation(line: 14, column: 10, scope: !2132)
!2144 = !DILocation(line: 12, column: 6, scope: !2132)
!2145 = !DILocation(line: 13, column: 6, scope: !2132)
!2146 = !DILocation(line: 13, column: 22, scope: !2132)
!2147 = !DILocation(line: 0, scope: !2132)
!2148 = !DILocation(line: 14, column: 13, scope: !2132)
!2149 = !DILocation(line: 14, column: 11, scope: !2132)
!2150 = !DILocation(line: 14, column: 12, scope: !2132)
!2151 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2143)
!2152 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2143)
!2153 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2143)
!2154 = !DILocation(line: 13, column: 26, scope: !2132)
!2155 = !DILocation(line: 13, column: 14, scope: !2132)
!2156 = !DILocation(line: 13, column: 16, scope: !2132)
!2157 = !DILocation(line: 16, column: 2, scope: !2132)
!2158 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2161)
!2159 = !DISubroutineType(cc: DW_CC_nocall, types: !2160)
!2160 = !{!21}
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "ptr", arg: 1, scope: !2158, file: !1602, line: 371, type: !21)
!2163 = !DILocalVariable(name: "i", scope: !2158, file: !1602, line: 378, type: !2136)
!2164 = !DILocalVariable(name: "nibble", scope: !2158, file: !1602, line: 379, type: !165)
!2165 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 383, column: 11, scope: !2158)
!2167 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 381, column: 11, scope: !2158)
!2169 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 377, column: 9, scope: !2158)
!2171 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 376, column: 9, scope: !2158)
!2173 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 373, column: 14, scope: !2158)
!2176 = !DILocation(line: 371, column: 6, scope: !2158)
!2177 = !DILocation(line: 372, column: 5, scope: !2158)
!2178 = !DILocation(line: 372, column: 9, scope: !2158)
!2179 = !DILocation(line: 0, scope: !2158)
!2180 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2175)
!2181 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2175)
!2182 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2174)
!2183 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2174)
!2184 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2174)
!2185 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2175)
!2186 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2172)
!2187 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2172)
!2188 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2172)
!2189 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2172)
!2190 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2170)
!2191 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2170)
!2192 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2170)
!2193 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2170)
!2194 = !DILocation(line: 378, column: 6, scope: !2158)
!2195 = !DILocation(line: 378, column: 14, scope: !2158)
!2196 = !DILocation(line: 379, column: 18, scope: !2158)
!2197 = !DILocation(line: 379, column: 22, scope: !2158)
!2198 = !DILocation(line: 379, column: 17, scope: !2158)
!2199 = !DILocation(line: 379, column: 3, scope: !2158)
!2200 = !DILocation(line: 380, column: 6, scope: !2158)
!2201 = !DILocation(line: 380, column: 13, scope: !2158)
!2202 = !DILocation(line: 381, column: 12, scope: !2158)
!2203 = !DILocation(line: 381, column: 19, scope: !2158)
!2204 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2168)
!2205 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2168)
!2206 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2168)
!2207 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2168)
!2208 = !DILocation(line: 385, column: 3, scope: !2158)
!2209 = !DILocation(line: 378, column: 45, scope: !2158)
!2210 = !DILocation(line: 378, column: 16, scope: !2158)
!2211 = !DILocation(line: 383, column: 12, scope: !2158)
!2212 = !DILocation(line: 383, column: 24, scope: !2158)
!2213 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2166)
!2214 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2166)
!2215 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2166)
!2216 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2166)
!2217 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2218 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2219 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 290, column: 9, scope: !2217)
!2221 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2220)
!2222 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2220)
!2223 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2220)
!2224 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2220)
!2225 = !DILocation(line: 291, column: 2, scope: !2217)
!2226 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !107, file: !107, line: 183, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2227 = !DILocation(line: 184, column: 30, scope: !2226)
!2228 = !DILocation(line: 184, column: 16, scope: !2226)
!2229 = !DILocation(line: 185, column: 2, scope: !2226)
!2230 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !107, file: !107, line: 193, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2231 = !DILocation(line: 194, column: 30, scope: !2230)
!2232 = !DILocation(line: 194, column: 16, scope: !2230)
!2233 = !DILocation(line: 195, column: 2, scope: !2230)
!2234 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !107, file: !107, line: 58, type: !2235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2238)
!2235 = !DISubroutineType(cc: DW_CC_nocall, types: !2236)
!2236 = !{!442, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2238 = !{!2239, !2240, !2241, !2253, !2254}
!2239 = !DILocalVariable(name: "message", arg: 1, scope: !2234, file: !107, line: 58, type: !442)
!2240 = !DILocalVariable(name: "panicking", arg: 2, scope: !2234, file: !107, line: 58, type: !2237)
!2241 = !DILocalVariable(name: "frame", scope: !2234, file: !107, line: 65, type: !2242)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64, align: 64, dwarfAddressSpace: 0)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2244)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2250, !2251, !2252}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2249, align: 64, offset: 128)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !970)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2242, size: 64, align: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2237, size: 8, align: 8, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !442, size: 128, align: 64, offset: 256)
!2253 = !DILocalVariable(name: "PanicValue", scope: !2234, file: !107, line: 42, type: !442)
!2254 = !DILocalVariable(name: "Panicking", scope: !2234, file: !107, line: 41, type: !2237)
!2255 = !DILocation(line: 58, column: 6, scope: !2234)
!2256 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 65, column: 38, scope: !2234)
!2258 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2257)
!2259 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2257)
!2260 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2257)
!2261 = !DILocation(line: 0, scope: !1890, inlinedAt: !2257)
!2262 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2257)
!2263 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2257)
!2264 = !DILocation(line: 65, column: 41, scope: !2234)
!2265 = !DILocation(line: 65, column: 3, scope: !2234)
!2266 = !DILocation(line: 66, column: 6, scope: !2234)
!2267 = !DILocation(line: 66, column: 12, scope: !2234)
!2268 = !DILocation(line: 0, scope: !2234)
!2269 = !DILocation(line: 67, column: 4, scope: !2234)
!2270 = !DILocation(line: 67, column: 23, scope: !2234)
!2271 = !DILocation(line: 67, column: 10, scope: !2234)
!2272 = !DILocation(line: 68, column: 4, scope: !2234)
!2273 = !DILocation(line: 68, column: 22, scope: !2234)
!2274 = !DILocation(line: 68, column: 10, scope: !2234)
!2275 = !DILocation(line: 69, column: 19, scope: !2234)
!2276 = !DILocation(line: 69, column: 18, scope: !2234)
!2277 = !DILocation(line: 73, column: 5, scope: !2234)
!2278 = !DILocation(line: 78, column: 13, scope: !2234)
!2279 = !DILocation(line: 79, column: 11, scope: !2234)
!2280 = !DILocation(line: 79, column: 10, scope: !2234)
!2281 = !DILocation(line: 80, column: 9, scope: !2234)
!2282 = !DILocation(line: 81, column: 7, scope: !2234)
!2283 = !DILocation(line: 82, column: 2, scope: !2234)
!2284 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2287)
!2285 = !DISubroutineType(cc: DW_CC_nocall, types: !2286)
!2286 = !{!442}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2294, !2295, !2296, !2298, !2299, !2300, !2301, !2302, !2303, !2305, !2306, !2308, !2310, !2311, !2312, !2314}
!2288 = !DILocalVariable(name: "msg", arg: 1, scope: !2284, file: !1602, line: 293, type: !442)
!2289 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !47)
!2290 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2136)
!2291 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !91)
!2292 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2293)
!2293 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2294 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !60)
!2295 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !1699)
!2296 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2297)
!2297 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2298 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !45)
!2299 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !98)
!2300 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !43)
!2301 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !11)
!2302 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !21)
!2303 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2304)
!2304 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2305 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !460)
!2306 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2307)
!2307 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2308 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2309)
!2309 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2310 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !301)
!2311 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !441)
!2312 = !DILocalVariable(name: "msg", scope: !2284, file: !1602, line: 294, type: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !442)
!2314 = !DILocalVariable(name: "itf", scope: !2284, file: !1602, line: 345, type: !442)
!2315 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 338, column: 14, scope: !2284)
!2318 = !DILocation(line: 293, column: 6, scope: !2284)
!2319 = !DILocation(line: 294, column: 16, scope: !2284)
!2320 = !DILocation(line: 338, column: 15, scope: !2284)
!2321 = !DILocation(line: 12, column: 6, scope: !2132, inlinedAt: !2317)
!2322 = !DILocation(line: 13, column: 6, scope: !2132, inlinedAt: !2317)
!2323 = !DILocation(line: 13, column: 22, scope: !2132, inlinedAt: !2317)
!2324 = !DILocation(line: 0, scope: !2132, inlinedAt: !2317)
!2325 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2317)
!2326 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2317)
!2327 = !DILocation(line: 14, column: 12, scope: !2132, inlinedAt: !2317)
!2328 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2316)
!2329 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2316)
!2330 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2316)
!2331 = !DILocation(line: 13, column: 26, scope: !2132, inlinedAt: !2317)
!2332 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2317)
!2333 = !DILocation(line: 13, column: 16, scope: !2132, inlinedAt: !2317)
!2334 = !DILocation(line: 352, column: 2, scope: !2284)
!2335 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !107, file: !107, line: 54, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2336)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "message", arg: 1, scope: !2335, file: !107, line: 54, type: !442)
!2338 = !DILocation(line: 54, column: 6, scope: !2335)
!2339 = !DILocation(line: 55, column: 16, scope: !2335)
!2340 = !DILocation(line: 55, column: 15, scope: !2335)
!2341 = !DILocation(line: 56, column: 2, scope: !2335)
!2342 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1507, file: !1507, line: 60, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!460, !460}
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "x", arg: 1, scope: !2342, file: !1507, line: 60, type: !460)
!2347 = !DILocalVariable(name: "y", arg: 2, scope: !2342, file: !1507, line: 60, type: !460)
!2348 = !DILocation(line: 60, column: 6, scope: !2342)
!2349 = !DILocation(line: 61, column: 24, scope: !2342)
!2350 = !DILocation(line: 61, column: 27, scope: !2342)
!2351 = !DILocalVariable(name: "x", arg: 1, scope: !2352, file: !1507, line: 87, type: !460)
!2352 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1507, file: !1507, line: 87, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2353)
!2353 = !{!2351, !2354}
!2354 = !DILocalVariable(name: "y", arg: 2, scope: !2352, file: !1507, line: 87, type: !460)
!2355 = !DILocation(line: 87, column: 6, scope: !2352, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 61, column: 23, scope: !2342)
!2357 = !DILocation(line: 88, column: 38, scope: !2352, inlinedAt: !2356)
!2358 = !DILocation(line: 88, column: 41, scope: !2352, inlinedAt: !2356)
!2359 = !DILocalVariable(name: "x", arg: 1, scope: !2360, file: !1507, line: 101, type: !460)
!2360 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1507, file: !1507, line: 101, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!460, !460, !1699, !1699}
!2363 = !{!2359, !2364, !2365, !2366, !2367, !2368}
!2364 = !DILocalVariable(name: "y", arg: 2, scope: !2360, file: !1507, line: 101, type: !460)
!2365 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2360, file: !1507, line: 101, type: !1699)
!2366 = !DILocalVariable(name: "magMask", arg: 4, scope: !2360, file: !1507, line: 101, type: !1699)
!2367 = !DILocalVariable(name: "xBits", scope: !2360, file: !1507, line: 102, type: !442)
!2368 = !DILocalVariable(name: "yBits", scope: !2360, file: !1507, line: 103, type: !442)
!2369 = !DILocation(line: 101, column: 6, scope: !2360, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 88, column: 37, scope: !2352, inlinedAt: !2356)
!2371 = !DILocation(line: 102, column: 11, scope: !2360, inlinedAt: !2370)
!2372 = !DILocation(line: 102, column: 2, scope: !2360, inlinedAt: !2370)
!2373 = !DILocation(line: 103, column: 11, scope: !2360, inlinedAt: !2370)
!2374 = !DILocation(line: 103, column: 2, scope: !2360, inlinedAt: !2370)
!2375 = !DILocation(line: 107, column: 7, scope: !2360, inlinedAt: !2370)
!2376 = !DILocation(line: 107, column: 16, scope: !2360, inlinedAt: !2370)
!2377 = !DILocation(line: 107, column: 13, scope: !2360, inlinedAt: !2370)
!2378 = !DILocation(line: 0, scope: !2360, inlinedAt: !2370)
!2379 = !DILocation(line: 109, column: 7, scope: !2360, inlinedAt: !2370)
!2380 = !DILocation(line: 109, column: 16, scope: !2360, inlinedAt: !2370)
!2381 = !DILocation(line: 109, column: 13, scope: !2360, inlinedAt: !2370)
!2382 = !DILocation(line: 118, column: 5, scope: !2360, inlinedAt: !2370)
!2383 = !DILocation(line: 118, column: 11, scope: !2360, inlinedAt: !2370)
!2384 = !DILocation(line: 121, column: 5, scope: !2360, inlinedAt: !2370)
!2385 = !DILocation(line: 121, column: 11, scope: !2360, inlinedAt: !2370)
!2386 = !DILocation(line: 124, column: 5, scope: !2360, inlinedAt: !2370)
!2387 = !DILocation(line: 124, column: 14, scope: !2360, inlinedAt: !2370)
!2388 = !DILocation(line: 124, column: 11, scope: !2360, inlinedAt: !2370)
!2389 = !DILocation(line: 61, column: 2, scope: !2342)
!2390 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1507, file: !1507, line: 65, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!2304, !2304}
!2393 = !{!2394, !2395}
!2394 = !DILocalVariable(name: "x", arg: 1, scope: !2390, file: !1507, line: 65, type: !2304)
!2395 = !DILocalVariable(name: "y", arg: 2, scope: !2390, file: !1507, line: 65, type: !2304)
!2396 = !DILocation(line: 65, column: 6, scope: !2390)
!2397 = !DILocation(line: 66, column: 24, scope: !2390)
!2398 = !DILocation(line: 66, column: 27, scope: !2390)
!2399 = !DILocalVariable(name: "x", arg: 1, scope: !2400, file: !1507, line: 83, type: !2304)
!2400 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1507, file: !1507, line: 83, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2401)
!2401 = !{!2399, !2402}
!2402 = !DILocalVariable(name: "y", arg: 2, scope: !2400, file: !1507, line: 83, type: !2304)
!2403 = !DILocation(line: 83, column: 6, scope: !2400, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 66, column: 23, scope: !2390)
!2405 = !DILocation(line: 84, column: 38, scope: !2400, inlinedAt: !2404)
!2406 = !DILocation(line: 84, column: 41, scope: !2400, inlinedAt: !2404)
!2407 = !DILocalVariable(name: "x", arg: 1, scope: !2408, file: !1507, line: 101, type: !2304)
!2408 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1507, file: !1507, line: 101, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!2304, !2304, !60, !60}
!2411 = !{!2407, !2412, !2413, !2414, !2415, !2416}
!2412 = !DILocalVariable(name: "y", arg: 2, scope: !2408, file: !1507, line: 101, type: !2304)
!2413 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2408, file: !1507, line: 101, type: !60)
!2414 = !DILocalVariable(name: "magMask", arg: 4, scope: !2408, file: !1507, line: 101, type: !60)
!2415 = !DILocalVariable(name: "xBits", scope: !2408, file: !1507, line: 102, type: !442)
!2416 = !DILocalVariable(name: "yBits", scope: !2408, file: !1507, line: 103, type: !442)
!2417 = !DILocation(line: 101, column: 6, scope: !2408, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 84, column: 37, scope: !2400, inlinedAt: !2404)
!2419 = !DILocation(line: 102, column: 11, scope: !2408, inlinedAt: !2418)
!2420 = !DILocation(line: 102, column: 2, scope: !2408, inlinedAt: !2418)
!2421 = !DILocation(line: 103, column: 11, scope: !2408, inlinedAt: !2418)
!2422 = !DILocation(line: 103, column: 2, scope: !2408, inlinedAt: !2418)
!2423 = !DILocation(line: 107, column: 7, scope: !2408, inlinedAt: !2418)
!2424 = !DILocation(line: 107, column: 16, scope: !2408, inlinedAt: !2418)
!2425 = !DILocation(line: 107, column: 13, scope: !2408, inlinedAt: !2418)
!2426 = !DILocation(line: 0, scope: !2408, inlinedAt: !2418)
!2427 = !DILocation(line: 109, column: 7, scope: !2408, inlinedAt: !2418)
!2428 = !DILocation(line: 109, column: 16, scope: !2408, inlinedAt: !2418)
!2429 = !DILocation(line: 109, column: 13, scope: !2408, inlinedAt: !2418)
!2430 = !DILocation(line: 118, column: 5, scope: !2408, inlinedAt: !2418)
!2431 = !DILocation(line: 118, column: 11, scope: !2408, inlinedAt: !2418)
!2432 = !DILocation(line: 121, column: 5, scope: !2408, inlinedAt: !2418)
!2433 = !DILocation(line: 121, column: 11, scope: !2408, inlinedAt: !2418)
!2434 = !DILocation(line: 124, column: 5, scope: !2408, inlinedAt: !2418)
!2435 = !DILocation(line: 124, column: 14, scope: !2408, inlinedAt: !2418)
!2436 = !DILocation(line: 124, column: 11, scope: !2408, inlinedAt: !2418)
!2437 = !DILocation(line: 66, column: 2, scope: !2390)
!2438 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1507, file: !1507, line: 70, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2439)
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "x", arg: 1, scope: !2438, file: !1507, line: 70, type: !460)
!2441 = !DILocalVariable(name: "y", arg: 2, scope: !2438, file: !1507, line: 70, type: !460)
!2442 = !DILocation(line: 70, column: 6, scope: !2438)
!2443 = !DILocation(line: 71, column: 24, scope: !2438)
!2444 = !DILocation(line: 71, column: 27, scope: !2438)
!2445 = !DILocalVariable(name: "x", arg: 1, scope: !2446, file: !1507, line: 95, type: !460)
!2446 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1507, file: !1507, line: 95, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2447)
!2447 = !{!2445, !2448}
!2448 = !DILocalVariable(name: "y", arg: 2, scope: !2446, file: !1507, line: 95, type: !460)
!2449 = !DILocation(line: 95, column: 6, scope: !2446, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 71, column: 23, scope: !2438)
!2451 = !DILocation(line: 96, column: 38, scope: !2446, inlinedAt: !2450)
!2452 = !DILocation(line: 96, column: 41, scope: !2446, inlinedAt: !2450)
!2453 = !DILocalVariable(name: "x", arg: 1, scope: !2454, file: !1507, line: 133, type: !460)
!2454 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1507, file: !1507, line: 133, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2455)
!2455 = !{!2453, !2456, !2457, !2458, !2459, !2460, !2461}
!2456 = !DILocalVariable(name: "y", arg: 2, scope: !2454, file: !1507, line: 133, type: !460)
!2457 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2454, file: !1507, line: 133, type: !1699)
!2458 = !DILocalVariable(name: "magMask", arg: 4, scope: !2454, file: !1507, line: 133, type: !1699)
!2459 = !DILocalVariable(name: "xBits", scope: !2454, file: !1507, line: 134, type: !442)
!2460 = !DILocalVariable(name: "yBits", scope: !2454, file: !1507, line: 135, type: !442)
!2461 = !DILocalVariable(name: "maxNegNaN", scope: !2454, file: !1507, line: 149, type: !442)
!2462 = !DILocation(line: 133, column: 6, scope: !2454, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 96, column: 37, scope: !2446, inlinedAt: !2450)
!2464 = !DILocation(line: 134, column: 11, scope: !2454, inlinedAt: !2463)
!2465 = !DILocation(line: 134, column: 2, scope: !2454, inlinedAt: !2463)
!2466 = !DILocation(line: 135, column: 11, scope: !2454, inlinedAt: !2463)
!2467 = !DILocation(line: 135, column: 2, scope: !2454, inlinedAt: !2463)
!2468 = !DILocation(line: 142, column: 5, scope: !2454, inlinedAt: !2463)
!2469 = !DILocation(line: 142, column: 11, scope: !2454, inlinedAt: !2463)
!2470 = !DILocation(line: 0, scope: !2454, inlinedAt: !2463)
!2471 = !DILocation(line: 145, column: 5, scope: !2454, inlinedAt: !2463)
!2472 = !DILocation(line: 145, column: 11, scope: !2454, inlinedAt: !2463)
!2473 = !DILocation(line: 149, column: 16, scope: !2454, inlinedAt: !2463)
!2474 = !DILocation(line: 149, column: 2, scope: !2454, inlinedAt: !2463)
!2475 = !DILocation(line: 151, column: 7, scope: !2454, inlinedAt: !2463)
!2476 = !DILocation(line: 151, column: 16, scope: !2454, inlinedAt: !2463)
!2477 = !DILocation(line: 151, column: 13, scope: !2454, inlinedAt: !2463)
!2478 = !DILocation(line: 153, column: 7, scope: !2454, inlinedAt: !2463)
!2479 = !DILocation(line: 153, column: 16, scope: !2454, inlinedAt: !2463)
!2480 = !DILocation(line: 153, column: 13, scope: !2454, inlinedAt: !2463)
!2481 = !DILocation(line: 156, column: 5, scope: !2454, inlinedAt: !2463)
!2482 = !DILocation(line: 156, column: 14, scope: !2454, inlinedAt: !2463)
!2483 = !DILocation(line: 156, column: 11, scope: !2454, inlinedAt: !2463)
!2484 = !DILocation(line: 71, column: 2, scope: !2438)
!2485 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1507, file: !1507, line: 75, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2486)
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "x", arg: 1, scope: !2485, file: !1507, line: 75, type: !2304)
!2488 = !DILocalVariable(name: "y", arg: 2, scope: !2485, file: !1507, line: 75, type: !2304)
!2489 = !DILocation(line: 75, column: 6, scope: !2485)
!2490 = !DILocation(line: 76, column: 24, scope: !2485)
!2491 = !DILocation(line: 76, column: 27, scope: !2485)
!2492 = !DILocalVariable(name: "x", arg: 1, scope: !2493, file: !1507, line: 91, type: !2304)
!2493 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1507, file: !1507, line: 91, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2494)
!2494 = !{!2492, !2495}
!2495 = !DILocalVariable(name: "y", arg: 2, scope: !2493, file: !1507, line: 91, type: !2304)
!2496 = !DILocation(line: 91, column: 6, scope: !2493, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 76, column: 23, scope: !2485)
!2498 = !DILocation(line: 92, column: 38, scope: !2493, inlinedAt: !2497)
!2499 = !DILocation(line: 92, column: 41, scope: !2493, inlinedAt: !2497)
!2500 = !DILocalVariable(name: "x", arg: 1, scope: !2501, file: !1507, line: 133, type: !2304)
!2501 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1507, file: !1507, line: 133, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2502)
!2502 = !{!2500, !2503, !2504, !2505, !2506, !2507, !2508}
!2503 = !DILocalVariable(name: "y", arg: 2, scope: !2501, file: !1507, line: 133, type: !2304)
!2504 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2501, file: !1507, line: 133, type: !60)
!2505 = !DILocalVariable(name: "magMask", arg: 4, scope: !2501, file: !1507, line: 133, type: !60)
!2506 = !DILocalVariable(name: "xBits", scope: !2501, file: !1507, line: 134, type: !442)
!2507 = !DILocalVariable(name: "yBits", scope: !2501, file: !1507, line: 135, type: !442)
!2508 = !DILocalVariable(name: "maxNegNaN", scope: !2501, file: !1507, line: 149, type: !442)
!2509 = !DILocation(line: 133, column: 6, scope: !2501, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 92, column: 37, scope: !2493, inlinedAt: !2497)
!2511 = !DILocation(line: 134, column: 11, scope: !2501, inlinedAt: !2510)
!2512 = !DILocation(line: 134, column: 2, scope: !2501, inlinedAt: !2510)
!2513 = !DILocation(line: 135, column: 11, scope: !2501, inlinedAt: !2510)
!2514 = !DILocation(line: 135, column: 2, scope: !2501, inlinedAt: !2510)
!2515 = !DILocation(line: 142, column: 5, scope: !2501, inlinedAt: !2510)
!2516 = !DILocation(line: 142, column: 11, scope: !2501, inlinedAt: !2510)
!2517 = !DILocation(line: 0, scope: !2501, inlinedAt: !2510)
!2518 = !DILocation(line: 145, column: 5, scope: !2501, inlinedAt: !2510)
!2519 = !DILocation(line: 145, column: 11, scope: !2501, inlinedAt: !2510)
!2520 = !DILocation(line: 149, column: 16, scope: !2501, inlinedAt: !2510)
!2521 = !DILocation(line: 149, column: 2, scope: !2501, inlinedAt: !2510)
!2522 = !DILocation(line: 151, column: 7, scope: !2501, inlinedAt: !2510)
!2523 = !DILocation(line: 151, column: 16, scope: !2501, inlinedAt: !2510)
!2524 = !DILocation(line: 151, column: 13, scope: !2501, inlinedAt: !2510)
!2525 = !DILocation(line: 153, column: 7, scope: !2501, inlinedAt: !2510)
!2526 = !DILocation(line: 153, column: 16, scope: !2501, inlinedAt: !2510)
!2527 = !DILocation(line: 153, column: 13, scope: !2501, inlinedAt: !2510)
!2528 = !DILocation(line: 156, column: 5, scope: !2501, inlinedAt: !2510)
!2529 = !DILocation(line: 156, column: 14, scope: !2501, inlinedAt: !2510)
!2530 = !DILocation(line: 156, column: 11, scope: !2501, inlinedAt: !2510)
!2531 = !DILocation(line: 76, column: 2, scope: !2485)
!2532 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !102, file: !102, line: 46, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2533 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 193, column: 20, scope: !2535, inlinedAt: !2543)
!2535 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542}
!2537 = !DILocalVariable(name: "current", scope: !2535, file: !2, line: 193, type: !3)
!2538 = !DILocalVariable(name: "otherGoroutines", scope: !2535, file: !2, line: 99, type: !43)
!2539 = !DILocalVariable(name: "scanWaitGroup", scope: !2535, file: !2, line: 151, type: !79)
!2540 = !DILocalVariable(name: "activeTasks", scope: !2535, file: !2, line: 45, type: !3)
!2541 = !DILocalVariable(name: "t", scope: !2535, file: !2, line: 212, type: !3)
!2542 = !DILocalVariable(name: "t", scope: !2535, file: !2, line: 223, type: !3)
!2543 = distinct !DILocation(line: 8, column: 25, scope: !2544, inlinedAt: !2545)
!2544 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2035, file: !2035, line: 7, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2545 = distinct !DILocation(line: 48, column: 17, scope: !2532)
!2546 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2534)
!2547 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2534)
!2548 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2534)
!2549 = !DILocation(line: 0, scope: !1890, inlinedAt: !2534)
!2550 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2534)
!2551 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2534)
!2552 = !DILocation(line: 193, column: 2, scope: !2535, inlinedAt: !2543)
!2553 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 196, column: 17, scope: !2535, inlinedAt: !2543)
!2555 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2554)
!2556 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2554)
!2558 = !DILocation(line: 196, column: 20, scope: !2535, inlinedAt: !2543)
!2559 = !DILocation(line: 0, scope: !2535, inlinedAt: !2543)
!2560 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 199, column: 22, scope: !2535, inlinedAt: !2543)
!2562 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2561)
!2563 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2561)
!2565 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2564)
!2566 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2564)
!2567 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2564)
!2568 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2564)
!2570 = !DILocation(line: 0, scope: !1795, inlinedAt: !2561)
!2571 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2561)
!2572 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2561)
!2574 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2573)
!2575 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2573)
!2576 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2573)
!2578 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2561)
!2579 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2561)
!2580 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2561)
!2582 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2581)
!2583 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2581)
!2584 = !DILocalVariable(name: "wg", arg: 1, scope: !2585, file: !2, line: 169, type: !1910)
!2585 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !2586)
!2586 = !{!2584, !2587}
!2587 = !DILocalVariable(name: "val", scope: !2585, file: !2, line: 171, type: !43)
!2588 = !DILocation(line: 169, column: 22, scope: !2585, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 202, column: 21, scope: !2535, inlinedAt: !2543)
!2590 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 171, column: 19, scope: !2585, inlinedAt: !2589)
!2592 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2591)
!2593 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2591)
!2595 = !DILocation(line: 172, column: 10, scope: !2585, inlinedAt: !2589)
!2596 = !DILocation(line: 0, scope: !2585, inlinedAt: !2589)
!2597 = !DILocation(line: 175, column: 3, scope: !2585, inlinedAt: !2589)
!2598 = !DILocation(line: 175, column: 13, scope: !2585, inlinedAt: !2589)
!2599 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 175, column: 12, scope: !2585, inlinedAt: !2589)
!2601 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2600)
!2602 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2600)
!2603 = !DILocation(line: 172, column: 6, scope: !2585, inlinedAt: !2589)
!2604 = !DILocation(line: 150, column: 18, scope: !2045, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 206, column: 16, scope: !2535, inlinedAt: !2543)
!2606 = !DILocation(line: 150, column: 51, scope: !2045, inlinedAt: !2605)
!2607 = !DILocation(line: 150, column: 56, scope: !2045, inlinedAt: !2605)
!2608 = !DILocation(line: 205, column: 6, scope: !2053, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 150, column: 49, scope: !2045, inlinedAt: !2605)
!2610 = !DILocation(line: 209, column: 33, scope: !2535, inlinedAt: !2543)
!2611 = !DILocation(line: 209, column: 3, scope: !2535, inlinedAt: !2543)
!2612 = !DILocation(line: 212, column: 12, scope: !2535, inlinedAt: !2543)
!2613 = !DILocation(line: 212, column: 7, scope: !2535, inlinedAt: !2543)
!2614 = !DILocation(line: 212, scope: !2535, inlinedAt: !2543)
!2615 = !DILocation(line: 212, column: 27, scope: !2535, inlinedAt: !2543)
!2616 = !DILocation(line: 213, column: 7, scope: !2535, inlinedAt: !2543)
!2617 = !DILocation(line: 213, column: 12, scope: !2535, inlinedAt: !2543)
!2618 = !DILocation(line: 213, column: 9, scope: !2535, inlinedAt: !2543)
!2619 = !DILocation(line: 214, column: 32, scope: !2535, inlinedAt: !2543)
!2620 = !DILocation(line: 214, column: 40, scope: !2535, inlinedAt: !2543)
!2621 = !DILocation(line: 214, column: 31, scope: !2535, inlinedAt: !2543)
!2622 = !DILocation(line: 212, column: 39, scope: !2535, inlinedAt: !2543)
!2623 = !DILocation(line: 212, column: 47, scope: !2535, inlinedAt: !2543)
!2624 = !DILocation(line: 212, column: 35, scope: !2535, inlinedAt: !2543)
!2625 = !DILocation(line: 212, column: 25, scope: !2535, inlinedAt: !2543)
!2626 = !DILocation(line: 169, column: 22, scope: !2585, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 219, column: 21, scope: !2535, inlinedAt: !2543)
!2628 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 171, column: 19, scope: !2585, inlinedAt: !2627)
!2630 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2629)
!2631 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2629)
!2633 = !DILocation(line: 172, column: 10, scope: !2585, inlinedAt: !2627)
!2634 = !DILocation(line: 0, scope: !2585, inlinedAt: !2627)
!2635 = !DILocation(line: 175, column: 3, scope: !2585, inlinedAt: !2627)
!2636 = !DILocation(line: 175, column: 13, scope: !2585, inlinedAt: !2627)
!2637 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 175, column: 12, scope: !2585, inlinedAt: !2627)
!2639 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2638)
!2640 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2638)
!2641 = !DILocation(line: 172, column: 6, scope: !2585, inlinedAt: !2627)
!2642 = !DILocation(line: 223, column: 11, scope: !2535, inlinedAt: !2543)
!2643 = !DILocation(line: 223, column: 6, scope: !2535, inlinedAt: !2543)
!2644 = !DILocation(line: 223, scope: !2535, inlinedAt: !2543)
!2645 = !DILocation(line: 223, column: 26, scope: !2535, inlinedAt: !2543)
!2646 = !DILocation(line: 224, column: 6, scope: !2535, inlinedAt: !2543)
!2647 = !DILocation(line: 224, column: 11, scope: !2535, inlinedAt: !2543)
!2648 = !DILocation(line: 224, column: 8, scope: !2535, inlinedAt: !2543)
!2649 = !DILocation(line: 225, column: 14, scope: !2535, inlinedAt: !2543)
!2650 = !DILocation(line: 225, column: 22, scope: !2535, inlinedAt: !2543)
!2651 = !DILocation(line: 225, column: 35, scope: !2535, inlinedAt: !2543)
!2652 = !DILocation(line: 225, column: 43, scope: !2535, inlinedAt: !2543)
!2653 = !DILocalVariable(name: "start", arg: 1, scope: !2654, file: !102, line: 51, type: !21)
!2654 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !102, file: !102, line: 51, type: !2655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!21, !21}
!2657 = !{!2653, !2658}
!2658 = !DILocalVariable(name: "end", arg: 2, scope: !2654, file: !102, line: 51, type: !21)
!2659 = !DILocation(line: 51, column: 6, scope: !2654, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 225, column: 13, scope: !2535, inlinedAt: !2543)
!2661 = !DILocation(line: 52, column: 17, scope: !2654, inlinedAt: !2660)
!2662 = !DILocation(line: 52, column: 24, scope: !2654, inlinedAt: !2660)
!2663 = !DILocation(line: 52, column: 16, scope: !2654, inlinedAt: !2660)
!2664 = !DILocation(line: 223, column: 38, scope: !2535, inlinedAt: !2543)
!2665 = !DILocation(line: 223, column: 46, scope: !2535, inlinedAt: !2543)
!2666 = !DILocation(line: 223, column: 34, scope: !2535, inlinedAt: !2543)
!2667 = !DILocation(line: 223, column: 24, scope: !2535, inlinedAt: !2543)
!2668 = !DILocation(line: 230, column: 18, scope: !2535, inlinedAt: !2543)
!2669 = !DILocalVariable(name: "found", arg: 1, scope: !2670, file: !2671, line: 95, type: !287)
!2670 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2671, file: !2671, line: 95, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2674)
!2671 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!287}
!2674 = !{!2669, !2675, !2676, !2677, !2690, !2691, !2692, !2699, !2700}
!2675 = !DILocalVariable(name: "headerPtr", scope: !2670, file: !2671, line: 103, type: !9)
!2676 = !DILocalVariable(name: "i", scope: !2670, file: !2671, line: 104, type: !2136)
!2677 = !DILocalVariable(name: "header", scope: !2670, file: !2671, line: 111, type: !2678)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64, align: 64, dwarfAddressSpace: 0)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2680)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2690 = !DILocalVariable(name: "start", scope: !2670, file: !2671, line: 113, type: !21)
!2691 = !DILocalVariable(name: "end", scope: !2670, file: !2671, line: 114, type: !21)
!2692 = !DILocalVariable(name: "header", scope: !2670, file: !2671, line: 118, type: !2693)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64, align: 64, dwarfAddressSpace: 0)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2695)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2696)
!2696 = !{!2682, !2684, !2685, !2686, !2687, !2688, !2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2699 = !DILocalVariable(name: "start", scope: !2670, file: !2671, line: 120, type: !21)
!2700 = !DILocalVariable(name: "end", scope: !2670, file: !2671, line: 121, type: !21)
!2701 = !DILocation(line: 95, column: 6, scope: !2670, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 16, column: 13, scope: !2703, inlinedAt: !2704)
!2703 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2035, file: !2035, line: 15, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2704 = distinct !DILocation(line: 233, column: 15, scope: !2535, inlinedAt: !2543)
!2705 = !DILocation(line: 103, column: 2, scope: !2670, inlinedAt: !2702)
!2706 = !DILocation(line: 104, column: 6, scope: !2670, inlinedAt: !2702)
!2707 = !DILocation(line: 104, column: 33, scope: !2670, inlinedAt: !2702)
!2708 = !DILocation(line: 104, column: 16, scope: !2670, inlinedAt: !2702)
!2709 = !DILocation(line: 0, scope: !2670, inlinedAt: !2702)
!2710 = !DILocation(line: 103, column: 80, scope: !2670, inlinedAt: !2702)
!2711 = !DILocation(line: 103, column: 67, scope: !2670, inlinedAt: !2702)
!2712 = !DILocation(line: 103, column: 29, scope: !2670, inlinedAt: !2702)
!2713 = !DILocation(line: 112, column: 14, scope: !2670, inlinedAt: !2702)
!2714 = !DILocation(line: 104, column: 14, scope: !2670, inlinedAt: !2702)
!2715 = !DILocation(line: 111, column: 36, scope: !2670, inlinedAt: !2702)
!2716 = !DILocation(line: 111, column: 4, scope: !2670, inlinedAt: !2702)
!2717 = !DILocation(line: 112, column: 7, scope: !2670, inlinedAt: !2702)
!2718 = !DILocation(line: 112, column: 20, scope: !2670, inlinedAt: !2702)
!2719 = !DILocation(line: 112, column: 34, scope: !2670, inlinedAt: !2702)
!2720 = !DILocation(line: 112, column: 41, scope: !2670, inlinedAt: !2702)
!2721 = !DILocation(line: 112, column: 46, scope: !2670, inlinedAt: !2702)
!2722 = !DILocation(line: 112, column: 52, scope: !2670, inlinedAt: !2702)
!2723 = !DILocation(line: 113, column: 14, scope: !2670, inlinedAt: !2702)
!2724 = !DILocation(line: 113, column: 21, scope: !2670, inlinedAt: !2702)
!2725 = !DILocation(line: 113, column: 5, scope: !2670, inlinedAt: !2702)
!2726 = !DILocation(line: 114, column: 12, scope: !2670, inlinedAt: !2702)
!2727 = !DILocation(line: 114, column: 20, scope: !2670, inlinedAt: !2702)
!2728 = !DILocation(line: 114, column: 5, scope: !2670, inlinedAt: !2702)
!2729 = !DILocation(line: 115, column: 5, scope: !2670, inlinedAt: !2702)
!2730 = !DILocation(line: 115, column: 11, scope: !2670, inlinedAt: !2702)
!2731 = !DILocation(line: 115, column: 18, scope: !2670, inlinedAt: !2702)
!2732 = !DILocation(line: 114, column: 27, scope: !2670, inlinedAt: !2702)
!2733 = !DILocation(line: 114, column: 18, scope: !2670, inlinedAt: !2702)
!2734 = !DILocation(line: 51, column: 6, scope: !2654, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 115, column: 10, scope: !2670, inlinedAt: !2702)
!2736 = !DILocation(line: 52, column: 17, scope: !2654, inlinedAt: !2735)
!2737 = !DILocation(line: 52, column: 24, scope: !2654, inlinedAt: !2735)
!2738 = !DILocation(line: 52, column: 16, scope: !2654, inlinedAt: !2735)
!2739 = !DILocation(line: 125, column: 26, scope: !2670, inlinedAt: !2702)
!2740 = !DILocation(line: 125, column: 48, scope: !2670, inlinedAt: !2702)
!2741 = !DILocation(line: 125, column: 25, scope: !2670, inlinedAt: !2702)
!2742 = !DILocation(line: 125, column: 3, scope: !2670, inlinedAt: !2702)
!2743 = !DILocation(line: 104, column: 41, scope: !2670, inlinedAt: !2702)
!2744 = !DILocation(line: 104, column: 21, scope: !2670, inlinedAt: !2702)
!2745 = !DILocation(line: 49, column: 2, scope: !2532)
!2746 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2035, file: !2035, line: 23, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2748)
!2747 = !DISubroutineType(types: !2160)
!2748 = !{!2749}
!2749 = !DILocalVariable(name: "sp", arg: 1, scope: !2746, file: !2035, line: 23, type: !21)
!2750 = !DILocation(line: 23, column: 6, scope: !2746)
!2751 = !DILocation(line: 24, column: 12, scope: !2746)
!2752 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 290, column: 16, scope: !2754, inlinedAt: !2755)
!2754 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464)
!2755 = distinct !DILocation(line: 24, column: 29, scope: !2746)
!2756 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2753)
!2757 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2753)
!2758 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2753)
!2759 = !DILocation(line: 0, scope: !1890, inlinedAt: !2753)
!2760 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2753)
!2761 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2753)
!2762 = !DILocation(line: 290, column: 25, scope: !2754, inlinedAt: !2755)
!2763 = !DILocation(line: 51, column: 6, scope: !2654, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 24, column: 11, scope: !2746)
!2765 = !DILocation(line: 52, column: 17, scope: !2654, inlinedAt: !2764)
!2766 = !DILocation(line: 52, column: 24, scope: !2654, inlinedAt: !2764)
!2767 = !DILocation(line: 52, column: 16, scope: !2654, inlinedAt: !2764)
!2768 = !DILocation(line: 25, column: 2, scope: !2746)
!2769 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !133, file: !133, line: 80, type: !2770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!60, !136}
!2772 = !{!2773, !2774, !2775, !2776, !2777}
!2773 = !DILocalVariable(name: "argc", arg: 1, scope: !2769, file: !133, line: 80, type: !60)
!2774 = !DILocalVariable(name: "argv", arg: 2, scope: !2769, file: !133, line: 80, type: !136)
!2775 = !DILocalVariable(name: "main_argc", scope: !2769, file: !133, line: 105, type: !60)
!2776 = !DILocalVariable(name: "main_argv", scope: !2769, file: !133, line: 106, type: !136)
!2777 = !DILocalVariable(name: "stackTop", scope: !2769, file: !133, line: 75, type: !21)
!2778 = !DILocation(line: 80, column: 6, scope: !2769)
!2779 = !DILocation(line: 87, column: 14, scope: !2769)
!2780 = !DILocation(line: 87, column: 2, scope: !2769)
!2781 = !DILocation(line: 88, column: 14, scope: !2769)
!2782 = !DILocation(line: 88, column: 2, scope: !2769)
!2783 = !DILocation(line: 92, column: 31, scope: !2769)
!2784 = !DILocation(line: 58, column: 6, scope: !1902, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 27, column: 26, scope: !2786, inlinedAt: !2788)
!2786 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2787, file: !2787, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2787 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2788 = distinct !DILocation(line: 97, column: 35, scope: !2769)
!2789 = !DILocation(line: 27, column: 16, scope: !2786, inlinedAt: !2788)
!2790 = !DILocation(line: 97, column: 2, scope: !2769)
!2791 = !DILocation(line: 98, column: 9, scope: !2769)
!2792 = !DILocation(line: 101, column: 2, scope: !2769)
!2793 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !133, file: !133, line: 135, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2794 = !DILocation(line: 137, column: 22, scope: !2795, inlinedAt: !2799)
!2795 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2671, file: !2671, line: 137, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2796)
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "read", scope: !2795, file: !2671, line: 138, type: !43)
!2798 = !DILocalVariable(name: "n", scope: !2795, file: !2671, line: 137, type: !11)
!2799 = distinct !DILocation(line: 27, column: 22, scope: !2800, inlinedAt: !2805)
!2800 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1502, file: !1502, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "r", scope: !2800, file: !1502, line: 27, type: !11)
!2803 = !DILocalVariable(name: "xorshift64State", scope: !2800, file: !1502, line: 52, type: !11)
!2804 = !DILocalVariable(name: "xorshift32State", scope: !2800, file: !1502, line: 32, type: !43)
!2805 = distinct !DILocation(line: 24, column: 10, scope: !2806, inlinedAt: !2809)
!2806 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !147, file: !147, line: 23, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2807)
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "stackTop", scope: !2806, file: !133, line: 75, type: !21)
!2809 = distinct !DILocation(line: 136, column: 5, scope: !2793)
!2810 = !DILocation(line: 138, column: 24, scope: !2795, inlinedAt: !2799)
!2811 = !DILocation(line: 138, column: 2, scope: !2795, inlinedAt: !2799)
!2812 = !DILocation(line: 139, column: 5, scope: !2795, inlinedAt: !2799)
!2813 = !DILocation(line: 139, column: 10, scope: !2795, inlinedAt: !2799)
!2814 = !DILocation(line: 0, scope: !2795, inlinedAt: !2799)
!2815 = !DILocation(line: 140, column: 3, scope: !2795, inlinedAt: !2799)
!2816 = !DILocation(line: 27, column: 2, scope: !2800, inlinedAt: !2805)
!2817 = !DILocation(line: 28, column: 27, scope: !2800, inlinedAt: !2805)
!2818 = !DILocation(line: 28, column: 2, scope: !2800, inlinedAt: !2805)
!2819 = !DILocation(line: 29, column: 27, scope: !2800, inlinedAt: !2805)
!2820 = !DILocation(line: 29, column: 2, scope: !2800, inlinedAt: !2805)
!2821 = !DILocation(line: 35, column: 12, scope: !2822, inlinedAt: !2823)
!2822 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !102, file: !102, line: 34, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2823 = distinct !DILocation(line: 25, column: 10, scope: !2806, inlinedAt: !2809)
!2824 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2823)
!2825 = !DILocation(line: 26, column: 12, scope: !2806, inlinedAt: !2809)
!2826 = !DILocalVariable(name: "sp", arg: 1, scope: !2827, file: !2, line: 55, type: !21)
!2827 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1464, retainedNodes: !2828)
!2828 = !{!2826, !2829}
!2829 = !DILocalVariable(name: "stackTop", scope: !2827, file: !2, line: 24, type: !21)
!2830 = !DILocation(line: 55, column: 6, scope: !2827, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 26, column: 11, scope: !2806, inlinedAt: !2809)
!2832 = !DILocation(line: 56, column: 28, scope: !2827, inlinedAt: !2831)
!2833 = !DILocation(line: 56, column: 17, scope: !2827, inlinedAt: !2831)
!2834 = !DILocation(line: 57, column: 18, scope: !2827, inlinedAt: !2831)
!2835 = !DILocation(line: 28, column: 10, scope: !2806, inlinedAt: !2809)
!2836 = !DILocation(line: 137, column: 2, scope: !2793)
!2837 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !133, file: !133, line: 148, type: !2838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!60, !21}
!2840 = !{!2841, !2842}
!2841 = !DILocalVariable(name: "sig", arg: 1, scope: !2837, file: !133, line: 148, type: !60)
!2842 = !DILocalVariable(name: "addr", arg: 2, scope: !2837, file: !133, line: 148, type: !21)
!2843 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 158, column: 14, scope: !2837)
!2846 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 290, column: 9, scope: !2217, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 169, column: 10, scope: !2837)
!2849 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 90, column: 10, scope: !2851, inlinedAt: !2860)
!2851 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!11}
!2854 = !{!2855, !2856, !2857, !2858, !2859}
!2855 = !DILocalVariable(name: "n", arg: 1, scope: !2851, file: !1602, line: 76, type: !11)
!2856 = !DILocalVariable(name: "firstdigit", scope: !2851, file: !1602, line: 79, type: !2136)
!2857 = !DILocalVariable(name: "i", scope: !2851, file: !1602, line: 80, type: !2136)
!2858 = !DILocalVariable(name: "digit", scope: !2851, file: !1602, line: 81, type: !165)
!2859 = !DILocalVariable(name: "i", scope: !2851, file: !1602, line: 89, type: !2136)
!2860 = distinct !DILocation(line: 62, column: 13, scope: !2861, inlinedAt: !2866)
!2861 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!43}
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "n", arg: 1, scope: !2861, file: !1602, line: 61, type: !43)
!2866 = distinct !DILocation(line: 72, column: 13, scope: !2867, inlinedAt: !2870)
!2867 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !2868)
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !1602, line: 65, type: !60)
!2870 = distinct !DILocation(line: 169, column: 10, scope: !2837)
!2871 = !DILocation(line: 76, column: 6, scope: !2851, inlinedAt: !2860)
!2872 = !DILocation(line: 77, column: 2, scope: !2851, inlinedAt: !2860)
!2873 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 69, column: 10, scope: !2867, inlinedAt: !2870)
!2875 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 290, column: 9, scope: !2217, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 167, column: 10, scope: !2837)
!2878 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 167, column: 10, scope: !2837)
!2881 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 290, column: 9, scope: !2217, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 165, column: 10, scope: !2837)
!2884 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 165, column: 10, scope: !2837)
!2887 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 290, column: 9, scope: !2217, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 163, column: 10, scope: !2837)
!2890 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 163, column: 10, scope: !2837)
!2893 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 160, column: 13, scope: !2837)
!2896 = !DILocation(line: 215, column: 2, scope: !2138, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 14, column: 10, scope: !2132, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 155, column: 14, scope: !2837)
!2899 = !DILocation(line: 148, column: 6, scope: !2837)
!2900 = !DILocation(line: 154, column: 5, scope: !2837)
!2901 = !DILocation(line: 154, column: 10, scope: !2837)
!2902 = !DILocation(line: 0, scope: !2837)
!2903 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2898)
!2904 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2898)
!2905 = !DILocation(line: 14, column: 12, scope: !2132, inlinedAt: !2898)
!2906 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2897)
!2907 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2897)
!2908 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2897)
!2909 = !DILocation(line: 13, column: 26, scope: !2132, inlinedAt: !2898)
!2910 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2898)
!2911 = !DILocation(line: 13, column: 16, scope: !2132, inlinedAt: !2898)
!2912 = !DILocation(line: 0, scope: !2132, inlinedAt: !2898)
!2913 = !DILocation(line: 156, column: 12, scope: !2837)
!2914 = !DILocation(line: 156, column: 11, scope: !2837)
!2915 = !DILocation(line: 12, column: 6, scope: !2132, inlinedAt: !2895)
!2916 = !DILocation(line: 13, column: 6, scope: !2132, inlinedAt: !2895)
!2917 = !DILocation(line: 13, column: 22, scope: !2132, inlinedAt: !2895)
!2918 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2895)
!2919 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2895)
!2920 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2894)
!2921 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2894)
!2922 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2894)
!2923 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2895)
!2924 = !DILocation(line: 161, column: 9, scope: !2837)
!2925 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 139, column: 16, scope: !2927, inlinedAt: !2928)
!2927 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !147, file: !147, line: 138, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2928 = distinct !DILocation(line: 163, column: 10, scope: !2837)
!2929 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2926)
!2930 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2926)
!2932 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2931)
!2933 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2931)
!2934 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2931)
!2935 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2931)
!2937 = !DILocation(line: 0, scope: !1795, inlinedAt: !2926)
!2938 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2926)
!2939 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2926)
!2941 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2940)
!2942 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2940)
!2943 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2940)
!2945 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2926)
!2946 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2926)
!2947 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2926)
!2949 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2948)
!2950 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2948)
!2951 = !DILocation(line: 12, column: 6, scope: !2132, inlinedAt: !2892)
!2952 = !DILocation(line: 13, column: 6, scope: !2132, inlinedAt: !2892)
!2953 = !DILocation(line: 13, column: 22, scope: !2132, inlinedAt: !2892)
!2954 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2892)
!2955 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2892)
!2956 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2891)
!2957 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2891)
!2958 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2891)
!2959 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2892)
!2960 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2888)
!2961 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2888)
!2962 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2888)
!2963 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 143, column: 18, scope: !2965, inlinedAt: !2966)
!2965 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !147, file: !147, line: 142, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498)
!2966 = distinct !DILocation(line: 163, column: 10, scope: !2837)
!2967 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2964)
!2969 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2968)
!2970 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2968)
!2972 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2964)
!2973 = !DILocation(line: 0, scope: !1735, inlinedAt: !2964)
!2974 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2964)
!2975 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2964)
!2976 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2964)
!2978 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2977)
!2979 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2977)
!2980 = !DILocation(line: 180, column: 8, scope: !2837)
!2981 = !DILocation(line: 180, column: 7, scope: !2837)
!2982 = !DILocation(line: 181, column: 2, scope: !2837)
!2983 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 139, column: 16, scope: !2927, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 165, column: 10, scope: !2837)
!2986 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2984)
!2987 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2984)
!2989 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2988)
!2990 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2988)
!2991 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2988)
!2992 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2988)
!2994 = !DILocation(line: 0, scope: !1795, inlinedAt: !2984)
!2995 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2984)
!2996 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2984)
!2998 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2997)
!2999 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2997)
!3000 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2997)
!3002 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2984)
!3003 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2984)
!3004 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2984)
!3006 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !3005)
!3007 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !3005)
!3008 = !DILocation(line: 12, column: 6, scope: !2132, inlinedAt: !2886)
!3009 = !DILocation(line: 13, column: 6, scope: !2132, inlinedAt: !2886)
!3010 = !DILocation(line: 13, column: 22, scope: !2132, inlinedAt: !2886)
!3011 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2886)
!3012 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2886)
!3013 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2885)
!3014 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2885)
!3015 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2885)
!3016 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2886)
!3017 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2882)
!3018 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2882)
!3019 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2882)
!3020 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 143, column: 18, scope: !2965, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 165, column: 10, scope: !2837)
!3023 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3021)
!3025 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3024)
!3026 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3024)
!3028 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3021)
!3029 = !DILocation(line: 0, scope: !1735, inlinedAt: !3021)
!3030 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3021)
!3031 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3021)
!3032 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3021)
!3034 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3033)
!3035 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3033)
!3036 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 139, column: 16, scope: !2927, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 167, column: 10, scope: !2837)
!3039 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !3037)
!3040 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !3037)
!3042 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3041)
!3043 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3041)
!3044 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3041)
!3045 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3041)
!3047 = !DILocation(line: 0, scope: !1795, inlinedAt: !3037)
!3048 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !3037)
!3049 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !3037)
!3051 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3050)
!3052 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3050)
!3053 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3050)
!3055 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !3037)
!3056 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !3037)
!3057 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !3037)
!3059 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !3058)
!3060 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !3058)
!3061 = !DILocation(line: 12, column: 6, scope: !2132, inlinedAt: !2880)
!3062 = !DILocation(line: 13, column: 6, scope: !2132, inlinedAt: !2880)
!3063 = !DILocation(line: 13, column: 22, scope: !2132, inlinedAt: !2880)
!3064 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2880)
!3065 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2880)
!3066 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2879)
!3067 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2879)
!3068 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2879)
!3069 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2880)
!3070 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2876)
!3071 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2876)
!3072 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2876)
!3073 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 143, column: 18, scope: !2965, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 167, column: 10, scope: !2837)
!3076 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3074)
!3078 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3077)
!3079 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3077)
!3081 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3074)
!3082 = !DILocation(line: 0, scope: !1735, inlinedAt: !3074)
!3083 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3074)
!3084 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3074)
!3085 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3074)
!3087 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3086)
!3088 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3086)
!3089 = !DILocation(line: 169, column: 11, scope: !2837)
!3090 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 139, column: 16, scope: !2927, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 169, column: 10, scope: !2837)
!3093 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !3091)
!3094 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !3091)
!3096 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3095)
!3097 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3095)
!3098 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3095)
!3099 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3095)
!3101 = !DILocation(line: 0, scope: !1795, inlinedAt: !3091)
!3102 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !3091)
!3103 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !3091)
!3105 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3104)
!3106 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3104)
!3107 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3104)
!3109 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !3091)
!3110 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !3091)
!3111 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !3091)
!3113 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !3112)
!3114 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !3112)
!3115 = !DILocation(line: 65, column: 6, scope: !2867, inlinedAt: !2870)
!3116 = !DILocation(line: 68, column: 5, scope: !2867, inlinedAt: !2870)
!3117 = !DILocation(line: 68, column: 7, scope: !2867, inlinedAt: !2870)
!3118 = !DILocation(line: 0, scope: !2867, inlinedAt: !2870)
!3119 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2874)
!3120 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2874)
!3121 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2874)
!3122 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2874)
!3123 = !DILocation(line: 70, column: 8, scope: !2867, inlinedAt: !2870)
!3124 = !DILocation(line: 70, column: 7, scope: !2867, inlinedAt: !2870)
!3125 = !DILocation(line: 70, column: 3, scope: !2867, inlinedAt: !2870)
!3126 = !DILocation(line: 65, column: 17, scope: !2867, inlinedAt: !2870)
!3127 = !DILocation(line: 72, column: 21, scope: !2867, inlinedAt: !2870)
!3128 = !DILocation(line: 61, column: 6, scope: !2861, inlinedAt: !2866)
!3129 = !DILocation(line: 62, column: 21, scope: !2861, inlinedAt: !2866)
!3130 = !DILocation(line: 62, column: 20, scope: !2861, inlinedAt: !2866)
!3131 = !DILocation(line: 79, column: 2, scope: !2851, inlinedAt: !2860)
!3132 = !DILocation(line: 80, column: 6, scope: !2851, inlinedAt: !2860)
!3133 = !DILocation(line: 0, scope: !2851, inlinedAt: !2860)
!3134 = !DILocation(line: 89, column: 23, scope: !2851, inlinedAt: !2860)
!3135 = !DILocation(line: 89, column: 25, scope: !2851, inlinedAt: !2860)
!3136 = !DILocation(line: 80, column: 15, scope: !2851, inlinedAt: !2860)
!3137 = !DILocation(line: 81, column: 17, scope: !2851, inlinedAt: !2860)
!3138 = !DILocation(line: 81, column: 18, scope: !2851, inlinedAt: !2860)
!3139 = !DILocation(line: 81, column: 16, scope: !2851, inlinedAt: !2860)
!3140 = !DILocation(line: 82, column: 15, scope: !2851, inlinedAt: !2860)
!3141 = !DILocation(line: 82, column: 9, scope: !2851, inlinedAt: !2860)
!3142 = !DILocation(line: 83, column: 12, scope: !2851, inlinedAt: !2860)
!3143 = !DILocation(line: 86, column: 3, scope: !2851, inlinedAt: !2860)
!3144 = !DILocation(line: 80, column: 23, scope: !2851, inlinedAt: !2860)
!3145 = !DILocation(line: 80, column: 17, scope: !2851, inlinedAt: !2860)
!3146 = !DILocation(line: 90, column: 18, scope: !2851, inlinedAt: !2860)
!3147 = !DILocation(line: 90, column: 17, scope: !2851, inlinedAt: !2860)
!3148 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2850)
!3149 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2850)
!3150 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2850)
!3151 = !DILocation(line: 89, column: 31, scope: !2851, inlinedAt: !2860)
!3152 = !DILocation(line: 92, column: 2, scope: !2851, inlinedAt: !2860)
!3153 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2847)
!3154 = !DILocation(line: 214, column: 6, scope: !2138, inlinedAt: !2847)
!3155 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2847)
!3156 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2847)
!3157 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 143, column: 18, scope: !2965, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 169, column: 10, scope: !2837)
!3160 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3158)
!3161 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3158)
!3163 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3162)
!3164 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3162)
!3165 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3162)
!3167 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !3158)
!3168 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3158)
!3169 = !DILocation(line: 0, scope: !1735, inlinedAt: !3158)
!3170 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3158)
!3171 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3158)
!3172 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3158)
!3174 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3173)
!3175 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3173)
!3176 = !DILocation(line: 14, column: 13, scope: !2132, inlinedAt: !2845)
!3177 = !DILocation(line: 14, column: 11, scope: !2132, inlinedAt: !2845)
!3178 = !DILocation(line: 14, column: 12, scope: !2132, inlinedAt: !2845)
!3179 = !DILocation(line: 215, column: 17, scope: !2138, inlinedAt: !2844)
!3180 = !DILocation(line: 216, column: 12, scope: !2138, inlinedAt: !2844)
!3181 = !DILocation(line: 217, column: 2, scope: !2138, inlinedAt: !2844)
!3182 = !DILocation(line: 13, column: 26, scope: !2132, inlinedAt: !2845)
!3183 = !DILocation(line: 13, column: 14, scope: !2132, inlinedAt: !2845)
!3184 = !DILocation(line: 13, column: 16, scope: !2132, inlinedAt: !2845)
!3185 = !DILocation(line: 0, scope: !2132, inlinedAt: !2845)
!3186 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !133, file: !133, line: 420, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1498, retainedNodes: !3187)
!3187 = !{!3188, !3189, !3190, !3191}
!3188 = !DILocalVariable(name: "s", arg: 1, scope: !3186, file: !133, line: 420, type: !60)
!3189 = !DILocalVariable(name: "mask", scope: !3186, file: !133, line: 427, type: !43)
!3190 = !DILocalVariable(name: "val", scope: !3186, file: !133, line: 428, type: !43)
!3191 = !DILocalVariable(name: "swapped", scope: !3186, file: !133, line: 429, type: !47)
!3192 = !DILocation(line: 420, column: 6, scope: !3186)
!3193 = !DILocation(line: 0, scope: !3186)
!3194 = !DILocation(line: 427, column: 31, scope: !3186)
!3195 = !DILocation(line: 427, column: 3, scope: !3186)
!3196 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 428, column: 30, scope: !3186)
!3198 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !3197)
!3199 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !3197)
!3201 = !DILocation(line: 428, column: 3, scope: !3186)
!3202 = !DILocation(line: 429, column: 45, scope: !3186)
!3203 = !DILocation(line: 429, column: 50, scope: !3186)
!3204 = !DILocation(line: 429, column: 54, scope: !3186)
!3205 = !DILocation(line: 429, column: 53, scope: !3186)
!3206 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 429, column: 44, scope: !3186)
!3208 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3207)
!3209 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3207)
!3210 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3207)
!3211 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3207)
!3213 = !DILocation(line: 429, column: 3, scope: !3186)
!3214 = !DILocation(line: 430, column: 6, scope: !3186)
!3215 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 437, column: 21, scope: !3186)
!3217 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3216)
!3218 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3216)
!3219 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3216)
!3221 = !DILocation(line: 437, column: 25, scope: !3186)
!3222 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 441, column: 22, scope: !3186)
!3224 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !3223)
!3225 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !3223)
!3226 = !DILocation(line: 443, column: 2, scope: !3186)
!3227 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3228, file: !3228, line: 6, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3235)
!3228 = !DIFile(filename: "MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY")
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!3231, !2136}
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !3232)
!3232 = !{!3233, !305, !310}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3234, size: 64, align: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64, align: 64, dwarfAddressSpace: 0)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3236 = !DILocalVariable(name: "arr", arg: 1, scope: !3227, file: !3228, line: 6, type: !3231)
!3237 = !DILocalVariable(name: "n", arg: 2, scope: !3227, file: !3228, line: 6, type: !2136)
!3238 = !DILocalVariable(name: "SubsetSum_1", scope: !3227, file: !3228, line: 8, type: !2136)
!3239 = !DILocalVariable(name: "SubsetSum_2", scope: !3227, file: !3228, line: 9, type: !2136)
!3240 = !DILocalVariable(name: "i", scope: !3227, file: !3228, line: 11, type: !2136)
!3241 = !DILocalVariable(name: "isSingleOccurance", scope: !3227, file: !3228, line: 12, type: !47)
!3242 = !DILocalVariable(name: "j", scope: !3227, file: !3228, line: 13, type: !2136)
!3243 = !DILocation(line: 6, column: 6, scope: !3227)
!3244 = !DILocation(line: 6, column: 13, scope: !3227)
!3245 = !DILocation(line: 8, column: 3, scope: !3227)
!3246 = !DILocation(line: 9, column: 3, scope: !3227)
!3247 = !DILocation(line: 11, column: 6, scope: !3227)
!3248 = !DILocation(line: 11, column: 19, scope: !3227)
!3249 = !DILocation(line: 11, column: 24, scope: !3227)
!3250 = !DILocation(line: 11, column: 21, scope: !3227)
!3251 = !DILocation(line: 0, scope: !3227)
!3252 = !DILocation(line: 12, column: 7, scope: !3227)
!3253 = !DILocation(line: 13, column: 16, scope: !3227)
!3254 = !DILocation(line: 13, column: 18, scope: !3227)
!3255 = !DILocation(line: 13, column: 7, scope: !3227)
!3256 = !DILocation(line: 13, column: 26, scope: !3227)
!3257 = !DILocation(line: 14, column: 10, scope: !3227)
!3258 = !DILocation(line: 14, column: 7, scope: !3227)
!3259 = !DILocation(line: 14, column: 11, scope: !3227)
!3260 = !DILocation(line: 14, column: 17, scope: !3227)
!3261 = !DILocation(line: 14, column: 21, scope: !3227)
!3262 = !DILocation(line: 14, column: 20, scope: !3227)
!3263 = !DILocation(line: 14, column: 14, scope: !3227)
!3264 = !DILocation(line: 15, column: 5, scope: !3227)
!3265 = !DILocation(line: 16, column: 5, scope: !3227)
!3266 = !DILocation(line: 16, column: 9, scope: !3227)
!3267 = !DILocalVariable(name: "arr", scope: !3268, file: !3228, line: 6, type: !3231)
!3268 = distinct !DISubprogram(name: "main.f_gold$1", linkageName: "main.f_gold$1", scope: !3228, file: !3228, line: 16, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3269)
!3269 = !{!3267, !3270, !3271}
!3270 = !DILocalVariable(name: "j", scope: !3268, file: !3228, line: 13, type: !2136)
!3271 = !DILocalVariable(name: "p", scope: !3268, file: !3228, line: 17, type: !3234)
!3272 = !DILocation(line: 17, column: 12, scope: !3268, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 20, column: 6, scope: !3227)
!3274 = !DILocation(line: 17, column: 16, scope: !3268, inlinedAt: !3273)
!3275 = !DILocation(line: 17, column: 6, scope: !3268, inlinedAt: !3273)
!3276 = !DILocation(line: 18, column: 6, scope: !3268, inlinedAt: !3273)
!3277 = !DILocation(line: 18, column: 10, scope: !3268, inlinedAt: !3273)
!3278 = !DILocation(line: 18, column: 9, scope: !3268, inlinedAt: !3273)
!3279 = !DILocation(line: 19, column: 14, scope: !3268, inlinedAt: !3273)
!3280 = !DILocation(line: 16, column: 8, scope: !3227)
!3281 = !DILocation(line: 24, column: 6, scope: !3227)
!3282 = !DILocation(line: 13, column: 34, scope: !3227)
!3283 = !DILocation(line: 13, column: 24, scope: !3227)
!3284 = !DILocation(line: 13, column: 29, scope: !3227)
!3285 = !DILocation(line: 25, column: 7, scope: !3227)
!3286 = !DILocation(line: 25, column: 11, scope: !3227)
!3287 = !DILocation(line: 25, column: 10, scope: !3227)
!3288 = !DILocation(line: 25, column: 14, scope: !3227)
!3289 = !DILocation(line: 26, column: 20, scope: !3227)
!3290 = !DILocation(line: 26, column: 24, scope: !3227)
!3291 = !DILocation(line: 26, column: 5, scope: !3227)
!3292 = !DILocation(line: 28, column: 20, scope: !3227)
!3293 = !DILocation(line: 28, column: 24, scope: !3227)
!3294 = !DILocation(line: 28, column: 5, scope: !3227)
!3295 = !DILocation(line: 32, column: 42, scope: !3227)
!3296 = !DILocation(line: 32, column: 29, scope: !3227)
!3297 = !DILocation(line: 32, column: 30, scope: !3227)
!3298 = !DILocation(line: 32, column: 44, scope: !3227)
!3299 = !DILocalVariable(name: "x", arg: 1, scope: !3300, file: !3301, line: 13, type: !460)
!3300 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !3301, file: !3301, line: 13, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !3304)
!3301 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!460}
!3304 = !{!3299}
!3305 = !DILocation(line: 13, column: 6, scope: !3300, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 32, column: 21, scope: !3227)
!3307 = !DILocation(line: 14, column: 37, scope: !3300, inlinedAt: !3306)
!3308 = !DILocation(line: 14, column: 40, scope: !3300, inlinedAt: !3306)
!3309 = !DILocation(line: 32, column: 12, scope: !3227)
!3310 = !DILocation(line: 32, column: 2, scope: !3227)
