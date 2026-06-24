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
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !100
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !106
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !111
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !116
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !121
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !126
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !129
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !132
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !134
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !136
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !138
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !140
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
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #14, !dbg !1782
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
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #14, !dbg !1841
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
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #14, !dbg !1877
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
  %0 = call ptr @tinygo_task_current() #14, !dbg !1889
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
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #14, !dbg !1938
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
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #14, !dbg !1959
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
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #14, !dbg !1975
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !1970

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !1976
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #2 !dbg !1977 {
entry:
    #dbg_value(ptr %msg.data, !1981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1982)
    #dbg_value(i64 %msg.len, !1981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1982)
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !1983
    #dbg_value(%runtime._string poison, !1981, !DIExpression(), !1984)
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !1985
  unreachable, !dbg !1986
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #2 !dbg !1987 {
entry:
    #dbg_value(ptr %addr, !1991, !DIExpression(), !1993)
    #dbg_value(ptr %msg.data, !1992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1993)
    #dbg_value(i64 %msg.len, !1992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1993)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !1994
    #dbg_value(ptr %addr, !1991, !DIExpression(), !1995)
  %0 = ptrtoint ptr %addr to i64, !dbg !1996
  %1 = add i64 %0, -5, !dbg !1997
  call fastcc void @runtime.printptr(i64 %1), !dbg !1998
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !1999
    #dbg_value(%runtime._string poison, !1992, !DIExpression(), !2000)
  call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2001
  call fastcc void @runtime.printnl(), !dbg !2002
  call void @abort() #14, !dbg !2003
  unreachable, !dbg !2004
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #4 !dbg !2005 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2010
    #dbg_value(ptr %s.data, !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2017)
    #dbg_value(i64 %s.len, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2017)
    #dbg_value(i64 0, !2008, !DIExpression(), !2018)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2019)
  br label %for.body, !dbg !2020

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2008, !DIExpression(), !2021)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2022)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2023
  %2 = load i8, ptr %1, align 1, !dbg !2023
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2024
    #dbg_value(i8 %2, !2015, !DIExpression(), !2024)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2024
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2026
  %4 = add nuw nsw i64 %0, 1, !dbg !2027
    #dbg_value(i64 %4, !2008, !DIExpression(), !2028)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2029
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2020

for.done:                                         ; preds = %for.body
  ret void, !dbg !2030
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #4 !dbg !2031 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2038
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2040
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2042
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2044
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2046
    #dbg_value(i64 %ptr, !2035, !DIExpression(), !2049)
    #dbg_value(i64 %ptr, !2035, !DIExpression(), !2050)
  %0 = icmp eq i64 %ptr, 0, !dbg !2051
  br i1 %0, label %for.body.i, label %if.done, !dbg !2052

common.ret:                                       ; preds = %if.done2, %for.body.i
  ret void, !dbg !2052

for.body.i:                                       ; preds = %entry
    #dbg_value(i64 0, !2008, !DIExpression(), !2053)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2054)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2055
    #dbg_value(i8 110, !2015, !DIExpression(), !2055)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2055
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2057
    #dbg_value(i64 1, !2008, !DIExpression(), !2058)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2055
    #dbg_value(i8 105, !2015, !DIExpression(), !2055)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2055
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2057
    #dbg_value(i64 2, !2008, !DIExpression(), !2058)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2055
    #dbg_value(i8 108, !2015, !DIExpression(), !2055)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2055
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2057
    #dbg_value(i64 3, !2008, !DIExpression(), !2058)
  br label %common.ret, !dbg !2052

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2059
    #dbg_value(i8 48, !2015, !DIExpression(), !2060)
    #dbg_value(i8 48, !2015, !DIExpression(), !2059)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2059
    #dbg_value(i8 48, !2015, !DIExpression(), !2059)
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2062
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2063
    #dbg_value(i8 120, !2015, !DIExpression(), !2064)
    #dbg_value(i8 120, !2015, !DIExpression(), !2063)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2063
    #dbg_value(i8 120, !2015, !DIExpression(), !2063)
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #14, !dbg !2065
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2066
    #dbg_value(i64 0, !2036, !DIExpression(), !2067)
  br label %for.body, !dbg !2052

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2036, !DIExpression(), !2068)
    #dbg_value(i64 %7, !2035, !DIExpression(), !2069)
  %8 = lshr i64 %7, 60, !dbg !2070
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2071
    #dbg_value(i8 %9, !2037, !DIExpression(), !2072)
    #dbg_value(i8 %9, !2037, !DIExpression(), !2073)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2074
  br i1 %10, label %if.then1, label %if.else, !dbg !2052

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2037, !DIExpression(), !2075)
  %11 = or disjoint i8 %9, 48, !dbg !2076
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2077
    #dbg_value(i8 %11, !2015, !DIExpression(), !2078)
    #dbg_value(i8 %11, !2015, !DIExpression(), !2077)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2077
    #dbg_value(i8 %11, !2015, !DIExpression(), !2077)
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #14, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2080
  br label %if.done2, !dbg !2052

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2081
    #dbg_value(i64 %13, !2035, !DIExpression(), !2081)
  %14 = add nuw nsw i64 %6, 1, !dbg !2082
    #dbg_value(i64 %14, !2036, !DIExpression(), !2068)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2083
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2052

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2037, !DIExpression(), !2084)
  %15 = add nuw nsw i8 %9, 87, !dbg !2085
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2086
    #dbg_value(i8 %15, !2015, !DIExpression(), !2087)
    #dbg_value(i8 %15, !2015, !DIExpression(), !2086)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2086
    #dbg_value(i8 %15, !2015, !DIExpression(), !2086)
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #14, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2089
  br label %if.done2, !dbg !2052
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #4 !dbg !2090 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2092
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2094
    #dbg_value(i8 10, !2015, !DIExpression(), !2095)
    #dbg_value(i8 10, !2015, !DIExpression(), !2094)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2094
    #dbg_value(i8 10, !2015, !DIExpression(), !2094)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2097
  ret void, !dbg !2098
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #7

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #2 !dbg !2099 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2100
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2101
  unreachable, !dbg !2102
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #2 !dbg !2103 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2104
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2105
  unreachable, !dbg !2106
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #8 !dbg !2107 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2128)
    #dbg_value(ptr @"internal/task$pack", !2112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2128)
    #dbg_value(i8 1, !2113, !DIExpression(), !2128)
  %0 = call ptr @tinygo_task_current() #14, !dbg !2129
    #dbg_value(ptr %0, !1893, !DIExpression(), !2131)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2132)
  %1 = icmp eq ptr %0, null, !dbg !2133
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2134

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2135
  unreachable, !dbg !2134

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2136)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2137
  %3 = load ptr, ptr %2, align 8, !dbg !2137
    #dbg_value(ptr %3, !2114, !DIExpression(), !2138)
    #dbg_value(ptr %3, !2114, !DIExpression(), !2139)
  %.not = icmp eq ptr %3, null, !dbg !2140
  br i1 %.not, label %if.done5, label %store.next, !dbg !2141

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2114, !DIExpression(), !2142)
    #dbg_value({ ptr, ptr } poison, !2112, !DIExpression(), !2143)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2144
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2144
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2144
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2144
    #dbg_value({ ptr, ptr } poison, !2126, !DIExpression(), !2144)
    #dbg_value(ptr %3, !2114, !DIExpression(), !2145)
    #dbg_value(i8 1, !2113, !DIExpression(), !2146)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2147
  store i8 1, ptr %5, align 1, !dbg !2147
    #dbg_value(i8 1, !2127, !DIExpression(), !2147)
    #dbg_value(ptr %3, !2114, !DIExpression(), !2148)
  call void @tinygo_longjmp(ptr nonnull %3) #14, !dbg !2149
  br label %if.done5, !dbg !2141

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2113, !DIExpression(), !2150)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2151
    #dbg_value({ ptr, ptr } poison, !2112, !DIExpression(), !2152)
  call fastcc void @runtime.printitf(), !dbg !2153
  call fastcc void @runtime.printnl(), !dbg !2154
  call void @abort() #14, !dbg !2155
  unreachable, !dbg !2156
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #4 !dbg !2157 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2188
    #dbg_value(ptr @"reflect/types.type:basic:string", !2161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2191)
    #dbg_value(ptr @"internal/task$pack", !2161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2191)
    #dbg_value({ ptr, ptr } poison, !2161, !DIExpression(), !2192)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2183, !DIExpression(), !2193)
    #dbg_value(ptr @"internal/task$string", !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2194)
    #dbg_value(i64 30, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2194)
    #dbg_value(i64 0, !2008, !DIExpression(), !2195)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2196)
  br label %for.body.i, !dbg !2197

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2008, !DIExpression(), !2198)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2199)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2200
  %2 = load i8, ptr %1, align 1, !dbg !2200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2201
    #dbg_value(i8 %2, !2015, !DIExpression(), !2201)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2201
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2203
  %4 = add nuw nsw i64 %0, 1, !dbg !2204
    #dbg_value(i64 %4, !2008, !DIExpression(), !2205)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2206
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2197

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2207
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #8 !dbg !2208 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2211)
    #dbg_value(ptr @"internal/task$pack", !2210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2211)
    #dbg_value({ ptr, ptr } poison, !2210, !DIExpression(), !2212)
  call fastcc void @runtime.panicOrGoexit(), !dbg !2213
  unreachable, !dbg !2214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #9 !dbg !2215 {
entry:
    #dbg_value(double %x, !2219, !DIExpression(), !2221)
    #dbg_value(double %y, !2220, !DIExpression(), !2221)
    #dbg_value(double %x, !2219, !DIExpression(), !2222)
    #dbg_value(double %y, !2220, !DIExpression(), !2223)
    #dbg_value(double %x, !2224, !DIExpression(), !2228)
    #dbg_value(double %y, !2227, !DIExpression(), !2228)
    #dbg_value(double %x, !2224, !DIExpression(), !2230)
    #dbg_value(double %y, !2227, !DIExpression(), !2231)
    #dbg_value(double %x, !2232, !DIExpression(), !2242)
    #dbg_value(double %y, !2237, !DIExpression(), !2242)
    #dbg_value(i64 9218868437227405313, !2238, !DIExpression(), !2242)
    #dbg_value(i64 9223372036854775807, !2239, !DIExpression(), !2242)
  %.cast.i.i = bitcast double %x to i64, !dbg !2244
    #dbg_value(i64 %.cast.i.i, !2240, !DIExpression(), !2245)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2246
    #dbg_value(i64 %.cast2.i.i, !2241, !DIExpression(), !2247)
    #dbg_value(i64 %.cast.i.i, !2240, !DIExpression(), !2248)
    #dbg_value(i64 9218868437227405313, !2238, !DIExpression(), !2249)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2250
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2251

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2241, !DIExpression(), !2252)
    #dbg_value(i64 9218868437227405313, !2238, !DIExpression(), !2253)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2254
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2251

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2240, !DIExpression(), !2255)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2256
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2251
    #dbg_value(i64 %.cast2.i.i, !2241, !DIExpression(), !2257)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2258
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2251
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2251
    #dbg_value(i64 %spec.select.i.i, !2240, !DIExpression(), !2259)
    #dbg_value(i64 %6, !2241, !DIExpression(), !2260)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2261
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2251
  br label %runtime.minimumFloat64.exit, !dbg !2251

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #9 !dbg !2263 {
entry:
    #dbg_value(float %x, !2267, !DIExpression(), !2269)
    #dbg_value(float %y, !2268, !DIExpression(), !2269)
    #dbg_value(float %x, !2267, !DIExpression(), !2270)
    #dbg_value(float %y, !2268, !DIExpression(), !2271)
    #dbg_value(float %x, !2272, !DIExpression(), !2276)
    #dbg_value(float %y, !2275, !DIExpression(), !2276)
    #dbg_value(float %x, !2272, !DIExpression(), !2278)
    #dbg_value(float %y, !2275, !DIExpression(), !2279)
    #dbg_value(float %x, !2280, !DIExpression(), !2290)
    #dbg_value(float %y, !2285, !DIExpression(), !2290)
    #dbg_value(i32 2139095041, !2286, !DIExpression(), !2290)
    #dbg_value(i32 2147483647, !2287, !DIExpression(), !2290)
  %.cast.i.i = bitcast float %x to i32, !dbg !2292
    #dbg_value(i32 %.cast.i.i, !2288, !DIExpression(), !2293)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2294
    #dbg_value(i32 %.cast2.i.i, !2289, !DIExpression(), !2295)
    #dbg_value(i32 %.cast.i.i, !2288, !DIExpression(), !2296)
    #dbg_value(i32 2139095041, !2286, !DIExpression(), !2297)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2298
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2299

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2289, !DIExpression(), !2300)
    #dbg_value(i32 2139095041, !2286, !DIExpression(), !2301)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2302
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2299

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2288, !DIExpression(), !2303)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2304
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2299
    #dbg_value(i32 %.cast2.i.i, !2289, !DIExpression(), !2305)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2306
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2299
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2299
    #dbg_value(i32 %spec.select.i.i, !2288, !DIExpression(), !2307)
    #dbg_value(i32 %6, !2289, !DIExpression(), !2308)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2309
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2299
  br label %runtime.minimumFloat32.exit, !dbg !2299

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2310
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #9 !dbg !2311 {
entry:
    #dbg_value(double %x, !2313, !DIExpression(), !2315)
    #dbg_value(double %y, !2314, !DIExpression(), !2315)
    #dbg_value(double %x, !2313, !DIExpression(), !2316)
    #dbg_value(double %y, !2314, !DIExpression(), !2317)
    #dbg_value(double %x, !2318, !DIExpression(), !2322)
    #dbg_value(double %y, !2321, !DIExpression(), !2322)
    #dbg_value(double %x, !2318, !DIExpression(), !2324)
    #dbg_value(double %y, !2321, !DIExpression(), !2325)
    #dbg_value(double %x, !2326, !DIExpression(), !2335)
    #dbg_value(double %y, !2329, !DIExpression(), !2335)
    #dbg_value(i64 9218868437227405313, !2330, !DIExpression(), !2335)
    #dbg_value(i64 9223372036854775807, !2331, !DIExpression(), !2335)
  %.cast.i.i = bitcast double %x to i64, !dbg !2337
    #dbg_value(i64 %.cast.i.i, !2332, !DIExpression(), !2338)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2339
    #dbg_value(i64 %.cast6.i.i, !2333, !DIExpression(), !2340)
    #dbg_value(i64 %.cast.i.i, !2332, !DIExpression(), !2341)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2342
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2343
    #dbg_value(i64 %.cast6.i.i, !2333, !DIExpression(), !2344)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2345
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2343
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2343
    #dbg_value(i64 9218868437227405313, !2330, !DIExpression(), !2346)
    #dbg_value(i64 -9218868437227405314, !2334, !DIExpression(), !2347)
    #dbg_value(i64 %spec.select.i.i, !2332, !DIExpression(), !2348)
    #dbg_value(i64 -9218868437227405314, !2334, !DIExpression(), !2349)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2350
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2343

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2333, !DIExpression(), !2351)
    #dbg_value(i64 -9218868437227405314, !2334, !DIExpression(), !2352)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2353
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2343

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2332, !DIExpression(), !2354)
    #dbg_value(i64 %4, !2333, !DIExpression(), !2355)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2356
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2343
  br label %runtime.maximumFloat64.exit, !dbg !2343

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2357
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #9 !dbg !2358 {
entry:
    #dbg_value(float %x, !2360, !DIExpression(), !2362)
    #dbg_value(float %y, !2361, !DIExpression(), !2362)
    #dbg_value(float %x, !2360, !DIExpression(), !2363)
    #dbg_value(float %y, !2361, !DIExpression(), !2364)
    #dbg_value(float %x, !2365, !DIExpression(), !2369)
    #dbg_value(float %y, !2368, !DIExpression(), !2369)
    #dbg_value(float %x, !2365, !DIExpression(), !2371)
    #dbg_value(float %y, !2368, !DIExpression(), !2372)
    #dbg_value(float %x, !2373, !DIExpression(), !2382)
    #dbg_value(float %y, !2376, !DIExpression(), !2382)
    #dbg_value(i32 2139095041, !2377, !DIExpression(), !2382)
    #dbg_value(i32 2147483647, !2378, !DIExpression(), !2382)
  %.cast.i.i = bitcast float %x to i32, !dbg !2384
    #dbg_value(i32 %.cast.i.i, !2379, !DIExpression(), !2385)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2386
    #dbg_value(i32 %.cast6.i.i, !2380, !DIExpression(), !2387)
    #dbg_value(i32 %.cast.i.i, !2379, !DIExpression(), !2388)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2389
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2390
    #dbg_value(i32 %.cast6.i.i, !2380, !DIExpression(), !2391)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2392
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2390
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2390
    #dbg_value(i32 2139095041, !2377, !DIExpression(), !2393)
    #dbg_value(i32 -2139095042, !2381, !DIExpression(), !2394)
    #dbg_value(i32 %spec.select.i.i, !2379, !DIExpression(), !2395)
    #dbg_value(i32 -2139095042, !2381, !DIExpression(), !2396)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2397
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2390

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2380, !DIExpression(), !2398)
    #dbg_value(i32 -2139095042, !2381, !DIExpression(), !2399)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2400
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2390

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2379, !DIExpression(), !2401)
    #dbg_value(i32 %4, !2380, !DIExpression(), !2402)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2403
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2390
  br label %runtime.maximumFloat32.exit, !dbg !2390

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2404
}

declare void @GC_init() local_unnamed_addr #0

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #1 !dbg !2405 {
entry:
  %0 = call ptr @tinygo_task_current() #14, !dbg !2406
    #dbg_value(ptr %0, !1893, !DIExpression(), !2420)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2421)
  %1 = icmp eq ptr %0, null, !dbg !2422
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2423

if.then.i.i.i:                                    ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2424
  unreachable, !dbg !2423

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2425)
    #dbg_value(ptr %0, !2410, !DIExpression(), !2426)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2427)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2429)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !2430)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2430
  %3 = icmp eq i32 %2, 0, !dbg !2432
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2433

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2434)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2436)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2437)
    #dbg_value(i32 0, !1806, !DIExpression(), !2437)
    #dbg_value(i32 1, !1807, !DIExpression(), !2437)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2439)
    #dbg_value(i32 0, !1806, !DIExpression(), !2440)
    #dbg_value(i32 1, !1807, !DIExpression(), !2441)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1813, !DIExpression(), !2442)
    #dbg_value(i32 0, !1818, !DIExpression(), !2442)
    #dbg_value(i32 1, !1819, !DIExpression(), !2442)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2442
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2442
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %for.loop.preheader.i.i.i, !dbg !2444

for.loop.preheader.i.i.i:                         ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2445)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2446)
    #dbg_value(i32 2, !1752, !DIExpression(), !2446)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2448)
    #dbg_value(i32 2, !1752, !DIExpression(), !2449)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2450)
    #dbg_value(i32 2, !1764, !DIExpression(), !2450)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2450
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2452
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2444

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %for.loop.preheader.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2453)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1832, !DIExpression(), !2454)
    #dbg_value(i32 2, !1837, !DIExpression(), !2456)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #14, !dbg !2457
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2448)
    #dbg_value(i32 2, !1752, !DIExpression(), !2449)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2450)
    #dbg_value(i32 2, !1764, !DIExpression(), !2450)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2450
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2452
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2444

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %for.loop.preheader.i.i.i, %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2458, !DIExpression(), !2462)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2464)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2466)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2467)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2467
  %9 = icmp eq i32 %8, 0, !dbg !2469
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2470

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2458, !DIExpression(), !2471)
    #dbg_value(i32 %10, !2461, !DIExpression(), !2472)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2473)
    #dbg_value(i32 %10, !1837, !DIExpression(), !2475)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #14, !dbg !2476
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2466)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2467)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2467
    #dbg_value(i32 %11, !2461, !DIExpression(), !2477)
  %12 = icmp eq i32 %11, 0, !dbg !2469
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2470

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2478, !DIExpression(), !2482)
    #dbg_value(i32 1, !2481, !DIExpression(), !2482)
    #dbg_value(ptr @"internal/task.gcState", !2478, !DIExpression(), !2484)
    #dbg_value(i32 1, !2481, !DIExpression(), !2485)
    #dbg_value(ptr @"internal/task.gcState", !2486, !DIExpression(), !2490)
    #dbg_value(i32 1, !2489, !DIExpression(), !2490)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2490
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2492
    #dbg_value(i32 %13, !2411, !DIExpression(), !2492)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2493
    #dbg_value(%"internal/task.Semaphore" poison, !2412, !DIExpression(), !2493)
    #dbg_value(ptr poison, !2413, !DIExpression(), !2494)
    #dbg_value(ptr poison, !2414, !DIExpression(), !2495)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2496
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2497
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2433

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2414, !DIExpression(), !2498)
    #dbg_value(ptr %0, !2410, !DIExpression(), !2499)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2500
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2433

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2414, !DIExpression(), !2501)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2502
  %17 = load ptr, ptr %16, align 8, !dbg !2502
  call void @tinygo_task_send_gc_signal(ptr %17) #14, !dbg !2503
  br label %deref.next15.i.i, !dbg !2433

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2414, !DIExpression(), !2504)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2505
    #dbg_value(ptr poison, !2414, !DIExpression(), !2506)
  %19 = load ptr, ptr %18, align 8, !dbg !2496
    #dbg_value(ptr %19, !2414, !DIExpression(), !2507)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2497
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2433

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2458, !DIExpression(), !2508)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2510)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2512)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2513)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2513
  %21 = icmp eq i32 %20, 0, !dbg !2515
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2516

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2458, !DIExpression(), !2517)
    #dbg_value(i32 %22, !2461, !DIExpression(), !2518)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2519)
    #dbg_value(i32 %22, !1837, !DIExpression(), !2521)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #14, !dbg !2522
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2512)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2513)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2513
    #dbg_value(i32 %23, !2461, !DIExpression(), !2523)
  %24 = icmp eq i32 %23, 0, !dbg !2515
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2516

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2413, !DIExpression(), !2524)
    #dbg_value(ptr poison, !2415, !DIExpression(), !2525)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2526
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2527
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2433

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2415, !DIExpression(), !2528)
    #dbg_value(ptr %0, !2410, !DIExpression(), !2529)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2530
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2433

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2415, !DIExpression(), !2531)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2532
  %28 = load i64, ptr %27, align 8, !dbg !2532
    #dbg_value(ptr %26, !2415, !DIExpression(), !2533)
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2534
  %30 = load i64, ptr %29, align 8, !dbg !2534
    #dbg_value(i64 %28, !2535, !DIExpression(), !2541)
    #dbg_value(i64 %30, !2540, !DIExpression(), !2541)
    #dbg_value(i64 %28, !2535, !DIExpression(), !2543)
    #dbg_value(i64 %30, !2540, !DIExpression(), !2544)
  call void @GC_push_all(i64 %28, i64 %30) #14, !dbg !2545
  br label %deref.next33.i.i, !dbg !2433

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2415, !DIExpression(), !2546)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2547
    #dbg_value(ptr poison, !2415, !DIExpression(), !2548)
  %32 = load ptr, ptr %31, align 8, !dbg !2526
    #dbg_value(ptr %32, !2415, !DIExpression(), !2549)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2527
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2433

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  call void @tinygo_scanCurrentStack() #14, !dbg !2550
    #dbg_value(ptr undef, !2551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2583)
    #dbg_value(ptr poison, !2551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2583)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2587)
    #dbg_value(i64 0, !2558, !DIExpression(), !2588)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2589
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2590
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2591

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2592
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2587)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2593
    #dbg_value(i64 %35, !2557, !DIExpression(), !2587)
  %36 = inttoptr i64 %35 to ptr, !dbg !2594
    #dbg_value(ptr %36, !2557, !DIExpression(), !2587)
  br label %if.then.i.i.i.i, !dbg !2595

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i64 [ %53, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %38 = phi ptr [ %52, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %37, !2558, !DIExpression(), !2596)
    #dbg_value(ptr %38, !2557, !DIExpression(), !2597)
    #dbg_value(ptr %38, !2559, !DIExpression(), !2598)
    #dbg_value(ptr %38, !2559, !DIExpression(), !2599)
  %39 = icmp eq ptr %38, null, !dbg !2595
  br i1 %39, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2595

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %40 = load i32, ptr %38, align 4, !dbg !2595
  %41 = icmp eq i32 %40, 1, !dbg !2600
  br i1 %41, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2591

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2559, !DIExpression(), !2601)
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !2602
  %43 = load i32, ptr %42, align 4, !dbg !2602
  %44 = and i32 %43, 2, !dbg !2603
  %.not.i.i.i.i = icmp eq i32 %44, 0, !dbg !2604
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2591

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %38, !2559, !DIExpression(), !2605)
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !2606
  %46 = load i64, ptr %45, align 8, !dbg !2606
    #dbg_value(i64 %46, !2572, !DIExpression(), !2607)
    #dbg_value(i64 %46, !2572, !DIExpression(), !2608)
    #dbg_value(ptr %38, !2559, !DIExpression(), !2609)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2610)
    #dbg_value({ ptr, ptr } poison, !2551, !DIExpression(), !2611)
    #dbg_value(i64 %46, !2572, !DIExpression(), !2612)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2613)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 40, !dbg !2614
  %48 = load i64, ptr %47, align 8, !dbg !2614
    #dbg_value(!DIArgList(i64 %46, i64 %48), !2573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2613)
  %49 = add i64 %48, %46, !dbg !2615
    #dbg_value(i64 %49, !2573, !DIExpression(), !2613)
    #dbg_value(i64 %46, !2535, !DIExpression(), !2616)
    #dbg_value(i64 %49, !2540, !DIExpression(), !2616)
    #dbg_value(i64 %46, !2535, !DIExpression(), !2618)
    #dbg_value(i64 %49, !2540, !DIExpression(), !2619)
  call void @GC_push_all(i64 %46, i64 %49) #14, !dbg !2620
  br label %if.done.i.i.i.i, !dbg !2591

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2557, !DIExpression(), !2621)
  %50 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2622
  %51 = sext i16 %50 to i64, !dbg !2623
  %52 = getelementptr i8, ptr %38, i64 %51, !dbg !2623
    #dbg_value(ptr %52, !2557, !DIExpression(), !2624)
  %53 = add nuw nsw i64 %37, 1, !dbg !2625
    #dbg_value(i64 %53, !2558, !DIExpression(), !2596)
  %54 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2589
  %55 = zext i16 %54 to i64, !dbg !2626
  %56 = icmp samesign ult i64 %53, %55, !dbg !2590
  br i1 %56, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2591

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !2595
  unreachable, !dbg !2595

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2627
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #1 !dbg !2628 {
entry:
    #dbg_value(i64 %sp, !2631, !DIExpression(), !2632)
    #dbg_value(i64 %sp, !2631, !DIExpression(), !2633)
  %0 = call ptr @tinygo_task_current() #14, !dbg !2634
    #dbg_value(ptr %0, !1893, !DIExpression(), !2638)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2639)
  %1 = icmp eq ptr %0, null, !dbg !2640
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2641

if.then.i.i:                                      ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2642
  unreachable, !dbg !2641

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2643)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2644
  %3 = load i64, ptr %2, align 8, !dbg !2644
    #dbg_value(i64 %sp, !2535, !DIExpression(), !2645)
    #dbg_value(i64 %3, !2540, !DIExpression(), !2645)
    #dbg_value(i64 %sp, !2535, !DIExpression(), !2647)
    #dbg_value(i64 %3, !2540, !DIExpression(), !2648)
  call void @GC_push_all(i64 %sp, i64 %3) #14, !dbg !2649
  ret void, !dbg !2650
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #1 !dbg !2651 {
entry:
    #dbg_value(i32 %argc, !2655, !DIExpression(), !2660)
    #dbg_value(ptr %argv, !2656, !DIExpression(), !2660)
    #dbg_value(i32 %argc, !2655, !DIExpression(), !2661)
    #dbg_value(i32 %argc, !2657, !DIExpression(), !2662)
    #dbg_value(ptr %argv, !2656, !DIExpression(), !2663)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2664
    #dbg_value(ptr %argv, !2658, !DIExpression(), !2664)
  call void @tinygo_register_fatal_signals() #14, !dbg !2665
  %0 = call ptr @llvm.stacksave.p0(), !dbg !2666
  %1 = ptrtoint ptr %0 to i64, !dbg !2671
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2672
    #dbg_value(i64 %1, !2659, !DIExpression(), !2672)
  call fastcc void @runtime.runMain(), !dbg !2673
  ret i64 0, !dbg !2674
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #10 !dbg !2675 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2676
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2676
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #14, !dbg !2692
    #dbg_value(i32 %0, !2679, !DIExpression(), !2693)
    #dbg_value(i32 %0, !2679, !DIExpression(), !2694)
  %.not.i.i.i = icmp eq i32 %0, 8, !dbg !2695
  br i1 %.not.i.i.i, label %runtime.run.exit, label %if.then.i.i.i, !dbg !2696

if.then.i.i.i:                                    ; preds = %entry
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2697
  br label %runtime.run.exit, !dbg !2697

runtime.run.exit:                                 ; preds = %entry, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2696
    #dbg_value(i64 poison, !2684, !DIExpression(), !2698)
    #dbg_value(i64 poison, !2684, !DIExpression(), !2699)
    #dbg_value(i64 poison, !2685, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2700)
    #dbg_value(i64 poison, !2685, !DIExpression(), !2701)
    #dbg_value(i64 poison, !2686, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2702)
  call void @GC_init() #14, !dbg !2703
  call void @tinygo_runtime_bdwgc_init() #14, !dbg !2706
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2707
    #dbg_value(i64 %1, !2690, !DIExpression(), !2707)
    #dbg_value(i64 %1, !2708, !DIExpression(), !2712)
    #dbg_value(i64 %1, !2708, !DIExpression(), !2714)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2715
    #dbg_value(i64 %1, !2711, !DIExpression(), !2715)
  call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #14, !dbg !2716
  call void @main.main(ptr undef) #14, !dbg !2717
  ret void, !dbg !2718
}

declare void @main.main(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #1 !dbg !2719 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2725
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2728
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2731
    #dbg_value(i64 %66, !2737, !DIExpression(), !2753)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2754
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2755
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2757
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2760
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2763
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2766
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2769
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2772
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2775
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2778
    #dbg_value(i32 %sig, !2723, !DIExpression(), !2781)
    #dbg_value(i64 %addr, !2724, !DIExpression(), !2781)
    #dbg_value(i64 %addr, !2724, !DIExpression(), !2782)
  %.not = icmp eq i64 %addr, 0, !dbg !2783
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2784

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2008, !DIExpression(), !2785)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2786)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2787
  %2 = load i8, ptr %1, align 1, !dbg !2787
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2788
    #dbg_value(i8 %2, !2015, !DIExpression(), !2788)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2788
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2790
  %4 = add nuw nsw i64 %0, 1, !dbg !2791
    #dbg_value(i64 %4, !2008, !DIExpression(), !2792)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2793
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2794

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2724, !DIExpression(), !2795)
  call fastcc void @runtime.printptr(i64 %addr), !dbg !2796
  br label %for.body.i2, !dbg !2784

for.body.i2:                                      ; preds = %runtime.printstring.exit, %for.body.i47
    #dbg_value(ptr poison, !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2797)
    #dbg_value(i64 16, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2797)
    #dbg_value(i64 0, !2008, !DIExpression(), !2798)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2799)
    #dbg_value(i64 0, !2008, !DIExpression(), !2800)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2801)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 58, !2015, !DIExpression(), !2802)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 1, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 32, !2015, !DIExpression(), !2802)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 2, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 99, !2015, !DIExpression(), !2802)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 3, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 97, !2015, !DIExpression(), !2802)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 4, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 117, !2015, !DIExpression(), !2802)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 5, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 103, !2015, !DIExpression(), !2802)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 6, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 104, !2015, !DIExpression(), !2802)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 7, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 116, !2015, !DIExpression(), !2802)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 8, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 32, !2015, !DIExpression(), !2802)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 9, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 115, !2015, !DIExpression(), !2802)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 10, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 105, !2015, !DIExpression(), !2802)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 11, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 103, !2015, !DIExpression(), !2802)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 12, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 110, !2015, !DIExpression(), !2802)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 13, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 97, !2015, !DIExpression(), !2802)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 14, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 108, !2015, !DIExpression(), !2802)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 15, !2008, !DIExpression(), !2805)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2802
    #dbg_value(i8 32, !2015, !DIExpression(), !2802)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2802
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2804
    #dbg_value(i64 16, !2008, !DIExpression(), !2805)
    #dbg_value(i32 %sig, !2723, !DIExpression(), !2806)
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2784

switch.body:                                      ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2807)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2811)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2812)
    #dbg_value(i32 0, !1806, !DIExpression(), !2812)
    #dbg_value(i32 1, !1807, !DIExpression(), !2812)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2814)
    #dbg_value(i32 0, !1806, !DIExpression(), !2815)
    #dbg_value(i32 1, !1807, !DIExpression(), !2816)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2817)
    #dbg_value(i32 0, !1818, !DIExpression(), !2817)
    #dbg_value(i32 1, !1819, !DIExpression(), !2817)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2817
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2817
  br i1 %22, label %for.body.i6, label %for.loop.preheader.i.i, !dbg !2819

for.loop.preheader.i.i:                           ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2820)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2821)
    #dbg_value(i32 2, !1752, !DIExpression(), !2821)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2823)
    #dbg_value(i32 2, !1752, !DIExpression(), !2824)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2825)
    #dbg_value(i32 2, !1764, !DIExpression(), !2825)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2825
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2827
  br i1 %.not4.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2819

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %for.loop.preheader.i.i, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2828)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2829)
    #dbg_value(i32 2, !1837, !DIExpression(), !2831)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !2832
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2823)
    #dbg_value(i32 2, !1752, !DIExpression(), !2824)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2825)
    #dbg_value(i32 2, !1764, !DIExpression(), !2825)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2825
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2827
  br i1 %.not.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2819

for.body.i6:                                      ; preds = %for.loop.preheader.i.i, %switch.body, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr poison, !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2833)
    #dbg_value(i64 6, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2833)
    #dbg_value(i64 0, !2008, !DIExpression(), !2834)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2835)
    #dbg_value(i64 0, !2008, !DIExpression(), !2836)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2837)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 83, !2015, !DIExpression(), !2838)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 1, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 73, !2015, !DIExpression(), !2838)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 2, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 71, !2015, !DIExpression(), !2838)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 3, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 66, !2015, !DIExpression(), !2838)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 4, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 85, !2015, !DIExpression(), !2838)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 5, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2838
    #dbg_value(i8 83, !2015, !DIExpression(), !2838)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2838
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2840
    #dbg_value(i64 6, !2008, !DIExpression(), !2841)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2842
    #dbg_value(i8 10, !2015, !DIExpression(), !2842)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2842
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #14, !dbg !2843
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2844
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2845)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2849)
    #dbg_value(i32 0, !1752, !DIExpression(), !2851)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2852)
    #dbg_value(i32 0, !1764, !DIExpression(), !2852)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2852
    #dbg_value(i32 %32, !1741, !DIExpression(), !2854)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %gep.next5.i.i
  ], !dbg !2855

if.then.i.i:                                      ; preds = %for.body.i6
  call fastcc void @runtime._panic(), !dbg !2856
  unreachable, !dbg !2856

gep.next5.i.i:                                    ; preds = %for.body.i6
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2857)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2858)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2860)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !2861
  br label %switch.done, !dbg !2855

switch.done:                                      ; preds = %gep.next5.i.i43, %runtime.printint32.exit, %gep.next5.i.i33, %for.body.i29, %gep.next5.i.i20, %for.body.i16, %gep.next5.i.i, %for.body.i6
    #dbg_value(i32 %sig, !2723, !DIExpression(), !2862)
  call void @raise(i32 %sig) #14, !dbg !2863
  ret void, !dbg !2864

switch.body3:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2865)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2868)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2869)
    #dbg_value(i32 0, !1806, !DIExpression(), !2869)
    #dbg_value(i32 1, !1807, !DIExpression(), !2869)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2871)
    #dbg_value(i32 0, !1806, !DIExpression(), !2872)
    #dbg_value(i32 1, !1807, !DIExpression(), !2873)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2874)
    #dbg_value(i32 0, !1818, !DIExpression(), !2874)
    #dbg_value(i32 1, !1819, !DIExpression(), !2874)
  %33 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2874
  %34 = extractvalue { i32, i1 } %33, 1, !dbg !2874
  br i1 %34, label %for.body.i16, label %for.loop.preheader.i.i10, !dbg !2876

for.loop.preheader.i.i10:                         ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2877)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2878)
    #dbg_value(i32 2, !1752, !DIExpression(), !2878)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2880)
    #dbg_value(i32 2, !1752, !DIExpression(), !2881)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2882)
    #dbg_value(i32 2, !1764, !DIExpression(), !2882)
  %35 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2882
  %.not4.i.i11 = icmp eq i32 %35, 0, !dbg !2884
  br i1 %.not4.i.i11, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2876

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %for.loop.preheader.i.i10, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2885)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2886)
    #dbg_value(i32 2, !1837, !DIExpression(), !2888)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !2889
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2880)
    #dbg_value(i32 2, !1752, !DIExpression(), !2881)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2882)
    #dbg_value(i32 2, !1764, !DIExpression(), !2882)
  %36 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2882
  %.not.i.i13 = icmp eq i32 %36, 0, !dbg !2884
  br i1 %.not.i.i13, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2876

for.body.i16:                                     ; preds = %for.loop.preheader.i.i10, %switch.body3, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr poison, !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2890)
    #dbg_value(i64 6, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2890)
    #dbg_value(i64 0, !2008, !DIExpression(), !2891)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2892)
    #dbg_value(i64 0, !2008, !DIExpression(), !2893)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2894)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 83, !2015, !DIExpression(), !2895)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 1, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 73, !2015, !DIExpression(), !2895)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 2, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 71, !2015, !DIExpression(), !2895)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 3, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 73, !2015, !DIExpression(), !2895)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 4, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 76, !2015, !DIExpression(), !2895)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 5, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2895
    #dbg_value(i8 76, !2015, !DIExpression(), !2895)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2895
  %42 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2897
    #dbg_value(i64 6, !2008, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2899
    #dbg_value(i8 10, !2015, !DIExpression(), !2899)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !2899
  %43 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #14, !dbg !2900
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2901
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2902)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2905)
    #dbg_value(i32 0, !1752, !DIExpression(), !2907)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2908)
    #dbg_value(i32 0, !1764, !DIExpression(), !2908)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2908
    #dbg_value(i32 %44, !1741, !DIExpression(), !2910)
  switch i32 %44, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %gep.next5.i.i20
  ], !dbg !2911

if.then.i.i21:                                    ; preds = %for.body.i16
  call fastcc void @runtime._panic(), !dbg !2912
  unreachable, !dbg !2912

gep.next5.i.i20:                                  ; preds = %for.body.i16
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2913)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2914)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2916)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !2917
  br label %switch.done, !dbg !2911

switch.body5:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2918)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2921)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2922)
    #dbg_value(i32 0, !1806, !DIExpression(), !2922)
    #dbg_value(i32 1, !1807, !DIExpression(), !2922)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2924)
    #dbg_value(i32 0, !1806, !DIExpression(), !2925)
    #dbg_value(i32 1, !1807, !DIExpression(), !2926)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2927)
    #dbg_value(i32 0, !1818, !DIExpression(), !2927)
    #dbg_value(i32 1, !1819, !DIExpression(), !2927)
  %45 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2927
  %46 = extractvalue { i32, i1 } %45, 1, !dbg !2927
  br i1 %46, label %for.body.i29, label %for.loop.preheader.i.i23, !dbg !2929

for.loop.preheader.i.i23:                         ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2930)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2931)
    #dbg_value(i32 2, !1752, !DIExpression(), !2931)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2933)
    #dbg_value(i32 2, !1752, !DIExpression(), !2934)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2935)
    #dbg_value(i32 2, !1764, !DIExpression(), !2935)
  %47 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2935
  %.not4.i.i24 = icmp eq i32 %47, 0, !dbg !2937
  br i1 %.not4.i.i24, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2929

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %for.loop.preheader.i.i23, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2938)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2939)
    #dbg_value(i32 2, !1837, !DIExpression(), !2941)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !2942
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2933)
    #dbg_value(i32 2, !1752, !DIExpression(), !2934)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2935)
    #dbg_value(i32 2, !1764, !DIExpression(), !2935)
  %48 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2935
  %.not.i.i26 = icmp eq i32 %48, 0, !dbg !2937
  br i1 %.not.i.i26, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2929

for.body.i29:                                     ; preds = %for.loop.preheader.i.i23, %switch.body5, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr poison, !2007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2943)
    #dbg_value(i64 7, !2007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2943)
    #dbg_value(i64 0, !2008, !DIExpression(), !2944)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2945)
    #dbg_value(i64 0, !2008, !DIExpression(), !2946)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !2947)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 83, !2015, !DIExpression(), !2948)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 1, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 73, !2015, !DIExpression(), !2948)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 2, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 71, !2015, !DIExpression(), !2948)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 3, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 83, !2015, !DIExpression(), !2948)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 4, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 69, !2015, !DIExpression(), !2948)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %53 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 5, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 71, !2015, !DIExpression(), !2948)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %54 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 6, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2948
    #dbg_value(i8 86, !2015, !DIExpression(), !2948)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !2948
  %55 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2950
    #dbg_value(i64 7, !2008, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2952
    #dbg_value(i8 10, !2015, !DIExpression(), !2952)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !2952
  %56 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #14, !dbg !2953
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2954
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2955)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2958)
    #dbg_value(i32 0, !1752, !DIExpression(), !2960)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2961)
    #dbg_value(i32 0, !1764, !DIExpression(), !2961)
  %57 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2961
    #dbg_value(i32 %57, !1741, !DIExpression(), !2963)
  switch i32 %57, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %gep.next5.i.i33
  ], !dbg !2964

if.then.i.i34:                                    ; preds = %for.body.i29
  call fastcc void @runtime._panic(), !dbg !2965
  unreachable, !dbg !2965

gep.next5.i.i33:                                  ; preds = %for.body.i29
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2966)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2967)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2969)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !2970
  br label %switch.done, !dbg !2964

switch.next6:                                     ; preds = %for.body.i2
    #dbg_value(i32 %sig, !2723, !DIExpression(), !2971)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2972)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2975)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2976)
    #dbg_value(i32 0, !1806, !DIExpression(), !2976)
    #dbg_value(i32 1, !1807, !DIExpression(), !2976)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2978)
    #dbg_value(i32 0, !1806, !DIExpression(), !2979)
    #dbg_value(i32 1, !1807, !DIExpression(), !2980)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2981)
    #dbg_value(i32 0, !1818, !DIExpression(), !2981)
    #dbg_value(i32 1, !1819, !DIExpression(), !2981)
  %58 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2981
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !2981
  br i1 %59, label %runtime.printlock.exit40, label %for.loop.preheader.i.i36, !dbg !2983

for.loop.preheader.i.i36:                         ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2984)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2985)
    #dbg_value(i32 2, !1752, !DIExpression(), !2985)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2987)
    #dbg_value(i32 2, !1752, !DIExpression(), !2988)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2989)
    #dbg_value(i32 2, !1764, !DIExpression(), !2989)
  %60 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2989
  %.not4.i.i37 = icmp eq i32 %60, 0, !dbg !2991
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2983

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %for.loop.preheader.i.i36, %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2992)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2993)
    #dbg_value(i32 2, !1837, !DIExpression(), !2995)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !2996
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2987)
    #dbg_value(i32 2, !1752, !DIExpression(), !2988)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2989)
    #dbg_value(i32 2, !1764, !DIExpression(), !2989)
  %61 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2989
  %.not.i.i39 = icmp eq i32 %61, 0, !dbg !2991
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2983

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %for.loop.preheader.i.i36
    #dbg_value(i32 %sig, !2751, !DIExpression(), !2997)
    #dbg_value(i32 %sig, !2751, !DIExpression(), !2998)
  %62 = icmp slt i32 %sig, 0, !dbg !2999
  br i1 %62, label %if.then.i, label %if.done.i, !dbg !3000

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3001
    #dbg_value(i8 45, !2015, !DIExpression(), !3002)
    #dbg_value(i8 45, !2015, !DIExpression(), !3001)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3001
    #dbg_value(i8 45, !2015, !DIExpression(), !3001)
  %63 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #14, !dbg !3003
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3004
    #dbg_value(i32 %sig, !2751, !DIExpression(), !3005)
  %64 = sub i32 0, %sig, !dbg !3006
    #dbg_value(i32 %64, !2751, !DIExpression(), !3007)
  br label %if.done.i, !dbg !3000

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %65 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %64, %if.then.i ], !dbg !3008
    #dbg_value(i32 %65, !2751, !DIExpression(), !3009)
    #dbg_value(i32 %65, !2747, !DIExpression(), !3010)
    #dbg_value(i32 %65, !2747, !DIExpression(), !3011)
  %66 = zext i32 %65 to i64, !dbg !3012
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2754
    #dbg_value(i64 19, !2738, !DIExpression(), !3013)
    #dbg_value(i64 19, !2739, !DIExpression(), !3014)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2754
  br label %for.body.i.i.i, !dbg !3015

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2741, !DIExpression(), !3016)
  %67 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3017
  br i1 %67, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3015

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %68 = phi i64 [ 19, %if.done.i ], [ %76, %for.body.i.i.i ]
  %69 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %70 = phi i64 [ %66, %if.done.i ], [ %75, %for.body.i.i.i ]
    #dbg_value(i64 %68, !2739, !DIExpression(), !3018)
    #dbg_value(i64 %70, !2737, !DIExpression(), !3019)
  %71 = urem i64 %70, 10, !dbg !3020
  %72 = trunc nuw nsw i64 %71 to i8, !dbg !3021
  %73 = or disjoint i8 %72, 48, !dbg !3021
    #dbg_value(i8 %73, !2740, !DIExpression(), !3022)
  %74 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %68, !dbg !3023
  store i8 %73, ptr %74, align 1, !dbg !3023
  %.not.i.i.i = icmp eq i64 %71, 0, !dbg !3024
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %69, i64 %68, !dbg !3015
  %75 = udiv i64 %70, 10, !dbg !3025
    #dbg_value(i64 %75, !2737, !DIExpression(), !3025)
  %76 = add nsw i64 %68, -1, !dbg !3026
    #dbg_value(i64 %76, !2739, !DIExpression(), !3018)
  %.not23.i.i.i = icmp eq i64 %68, 0, !dbg !3027
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3015

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %77 = phi i64 [ %81, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %77, !2741, !DIExpression(), !3028)
  %78 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %77, !dbg !3029
  %79 = load i8, ptr %78, align 1, !dbg !3029
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3030
    #dbg_value(i8 %79, !2015, !DIExpression(), !3030)
  store i8 %79, ptr %stackalloc.i.i.i.i, align 1, !dbg !3030
  %80 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #14, !dbg !3031
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3032
  %81 = add i64 %77, 1, !dbg !3033
    #dbg_value(i64 %81, !2741, !DIExpression(), !3016)
  %exitcond.not.i.i.i = icmp eq i64 %81, 20, !dbg !3017
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3015

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3034
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3035
    #dbg_value(i8 10, !2015, !DIExpression(), !3036)
    #dbg_value(i8 10, !2015, !DIExpression(), !3035)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3035
    #dbg_value(i8 10, !2015, !DIExpression(), !3035)
  %82 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #14, !dbg !3037
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3038
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3039)
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3042)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3043)
    #dbg_value(i32 0, !1752, !DIExpression(), !3043)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3045)
    #dbg_value(i32 0, !1752, !DIExpression(), !3046)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3047)
    #dbg_value(i32 0, !1764, !DIExpression(), !3047)
  %83 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3047
    #dbg_value(i32 %83, !1741, !DIExpression(), !3049)
    #dbg_value(i32 %83, !1741, !DIExpression(), !3050)
  switch i32 %83, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %gep.next5.i.i43
  ], !dbg !3051

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  call fastcc void @runtime._panic(), !dbg !3052
  unreachable, !dbg !3052

gep.next5.i.i43:                                  ; preds = %runtime.printint32.exit
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3053)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3054)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3056)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !3057
  br label %switch.done, !dbg !3051

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %84 = phi i64 [ %88, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %84, !2008, !DIExpression(), !3058)
    #dbg_value(%runtime._string poison, !2007, !DIExpression(), !3059)
  %85 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %84, !dbg !3060
  %86 = load i8, ptr %85, align 1, !dbg !3060
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3061
    #dbg_value(i8 %86, !2015, !DIExpression(), !3061)
  store i8 %86, ptr %stackalloc.i.i46, align 1, !dbg !3061
  %87 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #14, !dbg !3062
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3063
  %88 = add nuw nsw i64 %84, 1, !dbg !3064
    #dbg_value(i64 %88, !2008, !DIExpression(), !3065)
  %exitcond.not.i48 = icmp eq i64 %88, 20, !dbg !3066
  br i1 %exitcond.not.i48, label %for.body.i2, label %for.body.i47, !dbg !3067
}

declare void @raise(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #1 !dbg !3068 {
entry:
    #dbg_value(i32 %s, !3070, !DIExpression(), !3074)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3075

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3070, !DIExpression(), !3076)
    #dbg_value(i32 %shift.result, !3071, !DIExpression(), !3077)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3078)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3080)
    #dbg_value(ptr @runtime.receivedSignals, !1947, !DIExpression(), !3081)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3081
    #dbg_value(i32 %1, !3072, !DIExpression(), !3083)
    #dbg_value(i32 %1, !3072, !DIExpression(), !3084)
    #dbg_value(i32 %1, !3072, !DIExpression(), !3085)
    #dbg_value(i32 %shift.result, !3071, !DIExpression(), !3086)
  %2 = or i32 %1, %shift.result, !dbg !3087
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3088)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3088)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3088)
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3090)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3091)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3092)
    #dbg_value(ptr @runtime.receivedSignals, !1813, !DIExpression(), !3093)
    #dbg_value(i32 %1, !1818, !DIExpression(), !3093)
    #dbg_value(i32 %2, !1819, !DIExpression(), !3093)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3093
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3093
    #dbg_value(i1 %4, !3073, !DIExpression(), !3095)
    #dbg_value(i1 %4, !3073, !DIExpression(), !3096)
  br i1 %4, label %if.then, label %for.body, !dbg !3075

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3097)
    #dbg_value(i32 1, !1752, !DIExpression(), !3097)
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3099)
    #dbg_value(i32 1, !1752, !DIExpression(), !3100)
    #dbg_value(ptr @runtime.signalFutex, !1757, !DIExpression(), !3101)
    #dbg_value(i32 1, !1764, !DIExpression(), !3101)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3101
  %6 = icmp eq i32 %5, 0, !dbg !3103
  br i1 %6, label %if.then1, label %if.done, !dbg !3075

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3104)
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3106)
  call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #14, !dbg !3107
  br label %if.done, !dbg !3075

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3108
}

; Function Attrs: nofree nounwind uwtable(sync)
define i64 @f_gold(i64 %n, ptr nocapture readonly %templeHeight.data, i64 %templeHeight.len, i64 %templeHeight.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3118, !DIExpression(), !3126)
    #dbg_value(ptr %templeHeight.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %templeHeight.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %templeHeight.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 0, !3120, !DIExpression(), !3127)
    #dbg_value(i64 0, !3121, !DIExpression(), !3128)
  %0 = icmp sgt i64 %n, 0, !dbg !3129
  br i1 %0, label %for.loop1.preheader, label %for.done7, !dbg !3130

for.loop1.preheader:                              ; preds = %entry, %for.done6
  %indvars.iv31.in = phi i64 [ %indvars.iv31, %for.done6 ], [ %n, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done6 ], [ -1, %entry ]
  %1 = phi i64 [ %24, %for.done6 ], [ 0, %entry ]
  %2 = phi i64 [ %23, %for.done6 ], [ 0, %entry ]
  %indvars.iv31 = add i64 %indvars.iv31.in, -1, !dbg !3130
    #dbg_value(i64 %1, !3121, !DIExpression(), !3131)
  %.not = icmp eq i64 %1, 0, !dbg !3132
  br i1 %.not, label %for.done, label %for.body2.preheader, !dbg !3130

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not.first_iter = icmp ult i64 %indvars.iv, %templeHeight.len, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.body2.preheader, %if.then
  %.in823 = phi i64 [ %4, %if.then ], [ %1, %for.body2.preheader ]
  %3 = phi i64 [ %10, %if.then ], [ 0, %for.body2.preheader ]
  %4 = add nsw i64 %.in823, -1, !dbg !3134
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3124, !DIExpression(), !3136)
  br i1 %.not.first_iter, label %lookup.next, label %lookup.throw, !dbg !3133

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3137)
    #dbg_value(i64 %4, !3124, !DIExpression(), !3138)
  %.not5 = icmp ult i64 %.in823, %templeHeight.len, !dbg !3139
  br i1 %.not5, label %lookup.next11, label %lookup.throw10, !dbg !3139

lookup.next11:                                    ; preds = %lookup.next
  %5 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %4, !dbg !3133
  %6 = load i64, ptr %5, align 8, !dbg !3133
  %7 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in823, !dbg !3139
  %8 = load i64, ptr %7, align 8, !dbg !3139
  %9 = icmp slt i64 %6, %8, !dbg !3140
  br i1 %9, label %if.then, label %for.done, !dbg !3130

if.then:                                          ; preds = %lookup.next11
  %10 = add nuw nsw i64 %3, 1, !dbg !3141
    #dbg_value(i64 %10, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %4, !3124, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3142)
    #dbg_value(i64 %4, !3124, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3143)
  %exitcond.not = icmp eq i64 %10, %1, !dbg !3132
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3130

for.done:                                         ; preds = %if.then, %lookup.next11, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %1, %if.then ], [ %3, %lookup.next11 ], !dbg !3144
    #dbg_value(i64 %1, !3121, !DIExpression(), !3145)
    #dbg_value(i64 %1, !3125, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3146)
  %11 = add nuw nsw i64 %1, 1, !dbg !3147
  %12 = icmp slt i64 %11, %n, !dbg !3148
  br i1 %12, label %for.body4, label %for.done6, !dbg !3130

for.body4:                                        ; preds = %for.done, %if.then5
  %13 = phi i64 [ %21, %if.then5 ], [ %11, %for.done ]
  %.in25 = phi i64 [ %13, %if.then5 ], [ %1, %for.done ]
  %14 = phi i64 [ %20, %if.then5 ], [ 0, %for.done ]
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3149)
    #dbg_value(i64 %13, !3125, !DIExpression(), !3150)
  %.not6 = icmp ult i64 %13, %templeHeight.len, !dbg !3151
  br i1 %.not6, label %lookup.next15, label %lookup.throw14, !dbg !3151

lookup.next15:                                    ; preds = %for.body4
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3152)
    #dbg_value(i64 %13, !3125, !DIExpression(), !3153)
  %.not7 = icmp ult i64 %.in25, %templeHeight.len, !dbg !3154
  br i1 %.not7, label %lookup.next19, label %lookup.throw18, !dbg !3154

lookup.next19:                                    ; preds = %lookup.next15
  %15 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %13, !dbg !3151
  %16 = load i64, ptr %15, align 8, !dbg !3151
  %17 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in25, !dbg !3154
  %18 = load i64, ptr %17, align 8, !dbg !3154
  %19 = icmp slt i64 %16, %18, !dbg !3155
  br i1 %19, label %if.then5, label %for.done6, !dbg !3130

if.then5:                                         ; preds = %lookup.next19
  %20 = add nuw i64 %14, 1, !dbg !3156
    #dbg_value(i64 %20, !3123, !DIExpression(), !3156)
    #dbg_value(i64 %13, !3125, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3157)
  %21 = add nuw nsw i64 %13, 1, !dbg !3147
    #dbg_value(i64 %21, !3125, !DIExpression(), !3158)
    #dbg_value(i64 %n, !3118, !DIExpression(), !3159)
  %exitcond33.not = icmp eq i64 %20, %indvars.iv31, !dbg !3148
  br i1 %exitcond33.not, label %for.done6, label %for.body4, !dbg !3130

for.done6:                                        ; preds = %if.then5, %lookup.next19, %for.done
  %.lcssa15 = phi i64 [ 0, %for.done ], [ %indvars.iv31, %if.then5 ], [ %14, %lookup.next19 ], !dbg !3160
    #dbg_value(i64 %.lcssa15, !3123, !DIExpression(), !3161)
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3162)
    #dbg_value(i64 %.lcssa15, !3163, !DIExpression(), !3169)
    #dbg_value(i64 %.lcssa, !3168, !DIExpression(), !3171)
  %x.y.i = call i64 @llvm.smax.i64(i64 %.lcssa15, i64 %.lcssa), !dbg !3172
  %22 = add i64 %2, 1, !dbg !3173
  %23 = add i64 %22, %x.y.i, !dbg !3174
    #dbg_value(i64 %23, !3120, !DIExpression(), !3174)
  %24 = add nuw nsw i64 %1, 1, !dbg !3175
    #dbg_value(i64 %24, !3121, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3118, !DIExpression(), !3176)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3130
  %exitcond34.not = icmp eq i64 %24, %n, !dbg !3129
  br i1 %exitcond34.not, label %for.done7, label %for.loop1.preheader, !dbg !3130

for.done7:                                        ; preds = %for.done6, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %23, %for.done6 ], !dbg !3127
    #dbg_value(i64 %.lcssa18, !3120, !DIExpression(), !3177)
  ret i64 %.lcssa18, !dbg !3178

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw10:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3139
  unreachable, !dbg !3139

lookup.throw14:                                   ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3151
  unreachable, !dbg !3151

lookup.throw18:                                   ; preds = %lookup.next15
  call fastcc void @runtime.lookupPanic(), !dbg !3154
  unreachable, !dbg !3154
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!143, !145, !186, !187, !188, !210, !487, !506, !703, !719, !1448, !1459, !1492, !1493, !1731}
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
!101 = distinct !DIGlobalVariable(scope: null, file: !102, line: 78, type: !103, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7, lowerBound: 0)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !102, line: 99, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 24, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !102, line: 101, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2, lowerBound: 0)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !102, line: 184, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 23, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !102, line: 194, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 18, lowerBound: 0)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !128, file: !128, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!128 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !128, file: !128, line: 106, type: !131, isLocal: false, isDefinition: true, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !128, line: 155, type: !108, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !128, line: 158, type: !67, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !128, file: !128, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !128, file: !128, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !142, file: !142, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!142 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!144 = !DIFile(filename: "<unknown>", directory: "")
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !146)
!146 = !{!147, !93, !85, !153, !158, !161, !166, !171, !176, !181}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !150, isLocal: true, isDefinition: true)
!149 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 53, lowerBound: 0)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 60, lowerBound: 0)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !149, file: !149, line: 42, type: !160, isLocal: false, isDefinition: true, align: 8)
!160 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 70, lowerBound: 0)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 42, lowerBound: 0)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 59, lowerBound: 0)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 41, lowerBound: 0)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 58, lowerBound: 0)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !189)
!189 = !{!190, !196, !198, !203, !208}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !192, line: 12, type: !193, isLocal: true, isDefinition: true)
!192 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1, lowerBound: 0)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !192, line: 20, type: !193, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !192, line: 40, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 3, lowerBound: 0)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !192, line: 46, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 16, lowerBound: 0)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !192, line: 51, type: !205, isLocal: true, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !211)
!211 = !{!212, !215, !263, !271, !286, !296, !302, !311, !337, !344, !350, !370, !375, !380, !382, !384, !386, !388, !390, !392, !394, !399, !401, !406, !408, !411, !413, !415, !417, !419, !424, !429, !431, !436, !438, !440, !445, !447, !449, !451, !453, !455, !457, !459, !461, !466, !468, !470, !472, !478, !480, !482}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !214, file: !214, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!214 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !214, file: !214, line: 23, type: !217, isLocal: false, isDefinition: true, align: 8)
!217 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !218)
!218 = !{!219, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !224, size: 512, align: 8)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 512, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64, lowerBound: 0)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 792)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !214, file: !214, line: 65, type: !265, isLocal: false, isDefinition: true, align: 8)
!265 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !266)
!266 = !{!219, !267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 536)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !214, file: !214, line: 75, type: !273, isLocal: false, isDefinition: true, align: 8)
!273 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !274)
!274 = !{!219, !227, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 600)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !214, file: !214, line: 93, type: !288, isLocal: false, isDefinition: true, align: 8)
!288 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !289)
!289 = !{!219, !290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 552)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !214, file: !214, line: 103, type: !298, isLocal: false, isDefinition: true, align: 8)
!298 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !299)
!299 = !{!219, !300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 520)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !214, file: !214, line: 114, type: !304, isLocal: false, isDefinition: true, align: 8)
!304 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !305)
!305 = !{!219, !306, !307, !308, !309, !310, !295}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !214, file: !214, line: 124, type: !313, isLocal: false, isDefinition: true, align: 8)
!313 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !314)
!314 = !{!219, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 680)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !214, file: !214, line: 154, type: !339, isLocal: false, isDefinition: true, align: 8)
!339 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !340)
!340 = !{!219, !341, !342, !343, !270}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !214, file: !214, line: 174, type: !346, isLocal: false, isDefinition: true, align: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !214, file: !214, line: 192, type: !352, isLocal: false, isDefinition: true, align: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !353)
!353 = !{!354, !364, !369}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64, dwarfAddressSpace: 0)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !358)
!358 = !{!359, !365, !367, !368}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !360, size: 128, align: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !366, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !214, line: 218, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 4, lowerBound: 0)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !214, line: 223, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 33, lowerBound: 0)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !214, line: 223, type: !113, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !214, line: 230, type: !113, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !214, line: 239, type: !200, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !214, line: 255, type: !55, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !214, line: 255, type: !113, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !214, line: 232, type: !200, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !205, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 32, lowerBound: 0)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !113, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !214, line: 264, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 25, lowerBound: 0)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !214, line: 264, type: !118, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !410, file: !410, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!410 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !410, line: 73, type: !200, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !410, line: 74, type: !200, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !410, line: 75, type: !372, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !410, line: 76, type: !372, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !410, line: 77, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 9, lowerBound: 0)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !410, line: 78, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 6, lowerBound: 0)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !410, line: 79, type: !200, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !410, line: 80, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 10, lowerBound: 0)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !410, line: 87, type: !426, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !410, line: 88, type: !372, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !410, line: 89, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 5, lowerBound: 0)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !410, line: 90, type: !442, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !410, line: 91, type: !442, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !410, line: 97, type: !200, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !410, line: 98, type: !372, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !410, line: 99, type: !372, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !410, line: 100, type: !372, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !410, line: 101, type: !200, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !410, line: 107, type: !103, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !410, line: 108, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 8, lowerBound: 0)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !410, line: 109, type: !463, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !410, line: 110, type: !463, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !410, line: 111, type: !463, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !474, line: 1, type: !475, isLocal: true, isDefinition: true)
!474 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 13, lowerBound: 0)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !474, line: 1, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 83, lowerBound: 0)
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !488)
!488 = !{!489, !493, !495, !504}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !491, file: !491, line: 44, type: !492, isLocal: false, isDefinition: true, align: 8)
!491 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, align: 8, elements: !397)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !491, file: !491, line: 51, type: !224, isLocal: false, isDefinition: true, align: 8)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !497, file: !497, line: 12, type: !498, isLocal: false, isDefinition: true, align: 64)
!497 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !497, file: !497, line: 15, type: !498, isLocal: false, isDefinition: true, align: 64)
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !507)
!507 = !{!508, !510, !513, !518, !521, !524, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !597, !599, !601, !606, !608, !610, !612, !616, !619, !624, !627, !629, !633, !635, !638, !640, !644, !648, !650, !652, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701}
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !214, file: !214, line: 23, type: !217, isLocal: false, isDefinition: true, align: 8)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !512, file: !512, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!512 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !515, file: !515, line: 66, type: !516, isLocal: false, isDefinition: true, align: 64)
!515 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 448, align: 64, elements: !104)
!517 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !515, file: !515, line: 75, type: !520, isLocal: false, isDefinition: true, align: 64)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, align: 64, elements: !464)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !515, file: !515, line: 85, type: !523, isLocal: false, isDefinition: true, align: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 320, align: 64, elements: !443)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !526, file: !526, line: 240, type: !527, isLocal: false, isDefinition: true, align: 64)
!526 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 384, align: 64, elements: !427)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !526, file: !526, line: 248, type: !523, isLocal: false, isDefinition: true, align: 64)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !526, file: !526, line: 257, type: !527, isLocal: false, isDefinition: true, align: 64)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !526, file: !526, line: 265, type: !523, isLocal: false, isDefinition: true, align: 64)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !526, file: !526, line: 274, type: !527, isLocal: false, isDefinition: true, align: 64)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !526, file: !526, line: 282, type: !523, isLocal: false, isDefinition: true, align: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !526, file: !526, line: 291, type: !527, isLocal: false, isDefinition: true, align: 64)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !526, file: !526, line: 299, type: !523, isLocal: false, isDefinition: true, align: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !526, file: !526, line: 339, type: !527, isLocal: false, isDefinition: true, align: 64)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !526, file: !526, line: 347, type: !527, isLocal: false, isDefinition: true, align: 64)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !526, file: !526, line: 357, type: !527, isLocal: false, isDefinition: true, align: 64)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !526, file: !526, line: 365, type: !527, isLocal: false, isDefinition: true, align: 64)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !526, file: !526, line: 375, type: !527, isLocal: false, isDefinition: true, align: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !526, file: !526, line: 383, type: !527, isLocal: false, isDefinition: true, align: 64)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !526, file: !526, line: 393, type: !527, isLocal: false, isDefinition: true, align: 64)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !526, file: !526, line: 401, type: !527, isLocal: false, isDefinition: true, align: 64)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !560, file: !560, line: 235, type: !527, isLocal: false, isDefinition: true, align: 64)
!560 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !560, file: !560, line: 243, type: !523, isLocal: false, isDefinition: true, align: 64)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !560, file: !560, line: 252, type: !527, isLocal: false, isDefinition: true, align: 64)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !560, file: !560, line: 260, type: !523, isLocal: false, isDefinition: true, align: 64)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !560, file: !560, line: 269, type: !527, isLocal: false, isDefinition: true, align: 64)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !560, file: !560, line: 277, type: !523, isLocal: false, isDefinition: true, align: 64)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !560, file: !560, line: 286, type: !527, isLocal: false, isDefinition: true, align: 64)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !560, file: !560, line: 294, type: !523, isLocal: false, isDefinition: true, align: 64)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !560, file: !560, line: 334, type: !527, isLocal: false, isDefinition: true, align: 64)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !560, file: !560, line: 342, type: !527, isLocal: false, isDefinition: true, align: 64)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !560, file: !560, line: 352, type: !527, isLocal: false, isDefinition: true, align: 64)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !560, file: !560, line: 360, type: !527, isLocal: false, isDefinition: true, align: 64)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !560, file: !560, line: 370, type: !527, isLocal: false, isDefinition: true, align: 64)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !560, file: !560, line: 378, type: !527, isLocal: false, isDefinition: true, align: 64)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !560, file: !560, line: 388, type: !527, isLocal: false, isDefinition: true, align: 64)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !560, file: !560, line: 396, type: !527, isLocal: false, isDefinition: true, align: 64)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !593, file: !593, line: 91, type: !594, isLocal: false, isDefinition: true, align: 64)
!593 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 768, align: 64, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 12, lowerBound: 0)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !593, file: !593, line: 105, type: !516, isLocal: false, isDefinition: true, align: 64)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !593, file: !593, line: 114, type: !516, isLocal: false, isDefinition: true, align: 64)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !593, file: !593, line: 123, type: !603, isLocal: false, isDefinition: true, align: 64)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 960, align: 64, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 15, lowerBound: 0)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !593, file: !593, line: 140, type: !527, isLocal: false, isDefinition: true, align: 64)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !593, file: !593, line: 148, type: !527, isLocal: false, isDefinition: true, align: 64)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !593, file: !593, line: 156, type: !516, isLocal: false, isDefinition: true, align: 64)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !614, file: !614, line: 8, type: !615, isLocal: false, isDefinition: true, align: 64)
!614 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 2048, align: 64, elements: !397)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !614, file: !614, line: 16, type: !618, isLocal: false, isDefinition: true, align: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 640, align: 64, elements: !434)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !614, file: !614, line: 21, type: !621, isLocal: false, isDefinition: true, align: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 704, align: 64, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 11, lowerBound: 0)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !626, file: !626, line: 93, type: !527, isLocal: false, isDefinition: true, align: 64)
!626 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !626, file: !626, line: 103, type: !527, isLocal: false, isDefinition: true, align: 64)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !631, file: !631, line: 63, type: !632, isLocal: false, isDefinition: true, align: 64)
!631 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, align: 64, elements: !201)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !631, file: !631, line: 68, type: !523, isLocal: false, isDefinition: true, align: 64)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !637, file: !637, line: 57, type: !632, isLocal: false, isDefinition: true, align: 64)
!637 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !637, file: !637, line: 62, type: !632, isLocal: false, isDefinition: true, align: 64)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !642, file: !642, line: 81, type: !643, isLocal: false, isDefinition: true, align: 64)
!642 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 1, type: !647, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !604)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!654 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !704)
!704 = !{!705, !711}
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !707, file: !707, line: 71, type: !708, isLocal: false, isDefinition: true, align: 8)
!707 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 256, lowerBound: 0)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !707, file: !707, line: 100, type: !713, isLocal: false, isDefinition: true, align: 8)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, align: 8, elements: !206)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !720)
!720 = !{!721, !724, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !758, !760, !763, !765, !767, !769, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !870, !888, !893, !895, !897, !899, !901, !903, !905, !907, !919, !925, !933, !937, !942, !944, !946, !948, !957, !959, !967, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1031, !1037, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1108, !1113, !1118, !1123, !1125, !1127, !1129, !1134, !1136, !1138, !1140, !1142, !1144, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1205, !1210, !1212, !1214, !1216, !1218, !1220, !1225, !1227, !1229, !1231, !1233, !1235, !1240, !1242, !1244, !1249, !1251, !1253, !1255, !1257, !1259, !1261, !1263, !1265, !1267, !1269, !1271, !1273, !1278, !1280, !1282, !1284, !1286, !1288, !1290, !1292, !1294, !1299, !1301, !1306, !1311, !1313, !1315, !1317, !1322, !1324, !1326, !1328, !1330, !1335, !1337, !1339, !1341, !1343, !1345, !1350, !1352, !1357, !1359, !1361, !1363, !1365, !1367, !1369, !1371, !1373, !1375, !1377, !1379, !1384, !1386, !1391, !1393, !1395, !1397, !1399, !1402, !1404, !1406, !1408, !1410, !1412, !1414, !1416, !1418, !1420, !1425, !1427, !1429, !1431, !1433, !1435, !1437, !1439, !1441, !1443, !1446}
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !723, line: 393, type: !372, isLocal: true, isDefinition: true)
!723 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !723, file: !723, line: 393, type: !726, isLocal: false, isDefinition: true, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64, dwarfAddressSpace: 0)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !360, size: 128, align: 64)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !723, line: 394, type: !200, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !723, file: !723, line: 394, type: !726, isLocal: false, isDefinition: true, align: 64)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !723, line: 395, type: !442, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !723, file: !723, line: 395, type: !726, isLocal: false, isDefinition: true, align: 64)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !723, line: 396, type: !372, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !723, file: !723, line: 396, type: !726, isLocal: false, isDefinition: true, align: 64)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !723, line: 397, type: !200, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !723, file: !723, line: 397, type: !726, isLocal: false, isDefinition: true, align: 64)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !723, line: 398, type: !463, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !723, file: !723, line: 398, type: !726, isLocal: false, isDefinition: true, align: 64)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !723, line: 399, type: !103, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !723, file: !723, line: 399, type: !726, isLocal: false, isDefinition: true, align: 64)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !723, line: 400, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !622)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !723, file: !723, line: 400, type: !726, isLocal: false, isDefinition: true, align: 64)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !723, line: 401, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !595)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !723, file: !723, line: 401, type: !726, isLocal: false, isDefinition: true, align: 64)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !771, file: !771, line: 956, type: !772, isLocal: false, isDefinition: true, align: 64)
!771 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64, dwarfAddressSpace: 0)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !774)
!774 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !859, isLocal: false, isDefinition: true, align: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !860)
!860 = !{!90, !97, !92, !861, !862, !863, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !865, size: 128, align: 64, offset: 256)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 128, align: 64, elements: !194)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !867)
!867 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !868)
!868 = !{!502, !869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !363, size: 64, align: 64, offset: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !872, isLocal: false, isDefinition: true, align: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !886}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !881, size: 320, align: 64, offset: 320)
!881 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !885, size: 256, align: 64, offset: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !373)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !887, size: 160, align: 8, offset: 640)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 28, lowerBound: 0)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !647, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !475, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !757, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !762, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !909, isLocal: false, isDefinition: true, align: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !910)
!910 = !{!874, !875, !876, !911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !913, size: 2304, align: 64, offset: 192)
!913 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !914)
!914 = !{!883, !915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !916, size: 2240, align: 64, offset: 64)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 35, lowerBound: 0)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !921, isLocal: false, isDefinition: true, align: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !922)
!922 = !{!90, !97, !92, !861, !862, !863, !923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !924, size: 384, align: 64, offset: 256)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 384, align: 64, elements: !201)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !927, isLocal: false, isDefinition: true, align: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !928)
!928 = !{!90, !97, !92, !929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !932, size: 144, align: 8, offset: 256)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !124)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !935, file: !935, line: 12, type: !936, isLocal: false, isDefinition: true, align: 8)
!935 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !935, line: 17, type: !939, isLocal: true, isDefinition: true)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 14, lowerBound: 0)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !935, line: 1, type: !55, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !935, line: 1, type: !442, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !950, isLocal: false, isDefinition: true, align: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !951)
!951 = !{!874, !875, !876, !911, !952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !953, size: 128, align: 64, offset: 192)
!953 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !954)
!954 = !{!883, !955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !956, size: 64, align: 64, offset: 64)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !194)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !961, isLocal: false, isDefinition: true, align: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !962)
!962 = !{!90, !97, !92, !861, !862, !863, !963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !964, align: 64, offset: 256)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, align: 64, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 0, lowerBound: 0)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression())
!968 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !969, isLocal: false, isDefinition: true, align: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !970)
!970 = !{!874, !875, !876, !877, !878, !879, !971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !953, size: 128, align: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !973, size: 176, align: 8, offset: 448)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 22, lowerBound: 0)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(scope: null, file: !935, line: 250, type: !113, isLocal: true, isDefinition: true)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !935, line: 251, type: !647, isLocal: true, isDefinition: true)
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(scope: null, file: !935, line: 252, type: !647, isLocal: true, isDefinition: true)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !935, line: 278, type: !113, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !935, line: 280, type: !113, isLocal: true, isDefinition: true)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !935, line: 282, type: !113, isLocal: true, isDefinition: true)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !935, line: 284, type: !113, isLocal: true, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !935, line: 286, type: !113, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !935, line: 288, type: !113, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !935, line: 290, type: !113, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !935, line: 294, type: !113, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !935, line: 295, type: !647, isLocal: true, isDefinition: true)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !935, line: 296, type: !647, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !935, line: 301, type: !113, isLocal: true, isDefinition: true)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !935, line: 303, type: !647, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !935, line: 306, type: !113, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !935, line: 308, type: !647, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !1012, line: 16, type: !103, isLocal: true, isDefinition: true)
!1012 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression())
!1014 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !403, isLocal: true, isDefinition: true)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !426, isLocal: true, isDefinition: true)
!1023 = !DIGlobalVariableExpression(var: !1024, expr: !DIExpression())
!1024 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !950, isLocal: false, isDefinition: true, align: 64)
!1025 = !DIGlobalVariableExpression(var: !1026, expr: !DIExpression())
!1026 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1027, isLocal: false, isDefinition: true, align: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1028)
!1028 = !{!874, !875, !876, !877, !878, !879, !971, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1030, size: 136, align: 8, offset: 448)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression())
!1032 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1033, isLocal: false, isDefinition: true, align: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1034)
!1034 = !{!90, !97, !92, !861, !862, !863, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1036, size: 256, align: 64, offset: 256)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, align: 64, elements: !114)
!1037 = !DIGlobalVariableExpression(var: !1038, expr: !DIExpression())
!1038 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1039, isLocal: false, isDefinition: true, align: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1040)
!1040 = !{!90, !97, !92, !929, !930, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1042, size: 184, align: 8, offset: 256)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !119)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !950, isLocal: false, isDefinition: true, align: 64)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(scope: null, file: !1012, line: 1, type: !377, isLocal: true, isDefinition: true)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(scope: null, file: !723, line: 60, type: !103, isLocal: true, isDefinition: true)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression())
!1050 = distinct !DIGlobalVariable(scope: null, file: !723, line: 62, type: !372, isLocal: true, isDefinition: true)
!1051 = !DIGlobalVariableExpression(var: !1052, expr: !DIExpression())
!1052 = distinct !DIGlobalVariable(scope: null, file: !723, line: 64, type: !200, isLocal: true, isDefinition: true)
!1053 = !DIGlobalVariableExpression(var: !1054, expr: !DIExpression())
!1054 = distinct !DIGlobalVariable(scope: null, file: !723, line: 66, type: !372, isLocal: true, isDefinition: true)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression())
!1056 = distinct !DIGlobalVariable(scope: null, file: !723, line: 68, type: !442, isLocal: true, isDefinition: true)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(scope: null, file: !723, line: 70, type: !442, isLocal: true, isDefinition: true)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !723, line: 72, type: !442, isLocal: true, isDefinition: true)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression())
!1062 = distinct !DIGlobalVariable(scope: null, file: !723, line: 74, type: !372, isLocal: true, isDefinition: true)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !723, line: 76, type: !442, isLocal: true, isDefinition: true)
!1065 = !DIGlobalVariableExpression(var: !1066, expr: !DIExpression())
!1066 = distinct !DIGlobalVariable(scope: null, file: !723, line: 78, type: !426, isLocal: true, isDefinition: true)
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(scope: null, file: !723, line: 80, type: !426, isLocal: true, isDefinition: true)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !723, line: 82, type: !426, isLocal: true, isDefinition: true)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression())
!1072 = distinct !DIGlobalVariable(scope: null, file: !723, line: 84, type: !103, isLocal: true, isDefinition: true)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !723, line: 86, type: !103, isLocal: true, isDefinition: true)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression())
!1076 = distinct !DIGlobalVariable(scope: null, file: !723, line: 88, type: !103, isLocal: true, isDefinition: true)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression())
!1078 = distinct !DIGlobalVariable(scope: null, file: !723, line: 90, type: !421, isLocal: true, isDefinition: true)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(scope: null, file: !723, line: 92, type: !433, isLocal: true, isDefinition: true)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(scope: null, file: !723, line: 94, type: !426, isLocal: true, isDefinition: true)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !723, line: 96, type: !939, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(scope: null, file: !723, line: 98, type: !372, isLocal: true, isDefinition: true)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(scope: null, file: !723, line: 100, type: !421, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !723, line: 102, type: !200, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !723, line: 104, type: !442, isLocal: true, isDefinition: true)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !723, line: 106, type: !442, isLocal: true, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !723, line: 108, type: !372, isLocal: true, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(scope: null, file: !723, line: 110, type: !200, isLocal: true, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(scope: null, file: !723, line: 112, type: !426, isLocal: true, isDefinition: true)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !723, line: 114, type: !372, isLocal: true, isDefinition: true)
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression())
!1104 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1105, isLocal: true, isDefinition: true)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 44, lowerBound: 0)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1110, isLocal: true, isDefinition: true)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 40, lowerBound: 0)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1115, isLocal: true, isDefinition: true)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 36, lowerBound: 0)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1120, isLocal: true, isDefinition: true)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 38, lowerBound: 0)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !859, isLocal: false, isDefinition: true, align: 64)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression())
!1130 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1131, isLocal: false, isDefinition: true, align: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1132)
!1132 = !{!90, !97, !92, !929, !930, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !973, size: 176, align: 8, offset: 256)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !950, isLocal: false, isDefinition: true, align: 64)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1059, type: !647, isLocal: true, isDefinition: true)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !150, isLocal: true, isDefinition: true)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !74, isLocal: true, isDefinition: true)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !723, line: 965, type: !103, isLocal: true, isDefinition: true)
!1144 = !DIGlobalVariableExpression(var: !1145, expr: !DIExpression())
!1145 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1146, isLocal: true, isDefinition: true)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 27, lowerBound: 0)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression())
!1150 = distinct !DIGlobalVariable(scope: null, file: !723, line: 329, type: !103, isLocal: true, isDefinition: true)
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression())
!1152 = distinct !DIGlobalVariable(scope: null, file: !723, line: 331, type: !103, isLocal: true, isDefinition: true)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(scope: null, file: !723, line: 338, type: !426, isLocal: true, isDefinition: true)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !723, line: 338, type: !193, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !723, line: 340, type: !442, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !723, line: 344, type: !193, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !723, line: 346, type: !113, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !723, line: 348, type: !193, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !723, line: 348, type: !193, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !723, line: 350, type: !372, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !723, line: 350, type: !193, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(scope: null, file: !723, line: 354, type: !421, isLocal: true, isDefinition: true)
!1173 = !DIGlobalVariableExpression(var: !1174, expr: !DIExpression())
!1174 = distinct !DIGlobalVariable(scope: null, file: !723, line: 356, type: !463, isLocal: true, isDefinition: true)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(scope: null, file: !723, line: 359, type: !193, isLocal: true, isDefinition: true)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression())
!1178 = distinct !DIGlobalVariable(scope: null, file: !723, line: 359, type: !193, isLocal: true, isDefinition: true)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !723, line: 361, type: !193, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !723, line: 365, type: !193, isLocal: true, isDefinition: true)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression())
!1184 = distinct !DIGlobalVariable(scope: null, file: !723, line: 368, type: !113, isLocal: true, isDefinition: true)
!1185 = !DIGlobalVariableExpression(var: !1186, expr: !DIExpression())
!1186 = distinct !DIGlobalVariable(scope: null, file: !723, line: 372, type: !762, isLocal: true, isDefinition: true)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(scope: null, file: !723, line: 356, type: !463, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !377, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1212, type: !205, isLocal: true, isDefinition: true)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression())
!1200 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !377, isLocal: true, isDefinition: true)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression())
!1204 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !55, isLocal: true, isDefinition: true)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1207, isLocal: true, isDefinition: true)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 31, lowerBound: 0)
!1210 = !DIGlobalVariableExpression(var: !1211, expr: !DIExpression())
!1211 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !178, isLocal: true, isDefinition: true)
!1212 = !DIGlobalVariableExpression(var: !1213, expr: !DIExpression())
!1213 = distinct !DIGlobalVariable(scope: null, file: !771, line: 441, type: !372, isLocal: true, isDefinition: true)
!1214 = !DIGlobalVariableExpression(var: !1215, expr: !DIExpression())
!1215 = distinct !DIGlobalVariable(scope: null, file: !771, line: 650, type: !442, isLocal: true, isDefinition: true)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(scope: null, file: !771, line: 658, type: !442, isLocal: true, isDefinition: true)
!1218 = !DIGlobalVariableExpression(var: !1219, expr: !DIExpression())
!1219 = distinct !DIGlobalVariable(scope: null, file: !771, line: 667, type: !442, isLocal: true, isDefinition: true)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1222, isLocal: true, isDefinition: true)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 37, lowerBound: 0)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression())
!1226 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !168, isLocal: true, isDefinition: true)
!1227 = !DIGlobalVariableExpression(var: !1228, expr: !DIExpression())
!1228 = distinct !DIGlobalVariable(scope: null, file: !771, line: 824, type: !200, isLocal: true, isDefinition: true)
!1229 = !DIGlobalVariableExpression(var: !1230, expr: !DIExpression())
!1230 = distinct !DIGlobalVariable(scope: null, file: !771, line: 843, type: !442, isLocal: true, isDefinition: true)
!1231 = !DIGlobalVariableExpression(var: !1232, expr: !DIExpression())
!1232 = distinct !DIGlobalVariable(scope: null, file: !771, line: 630, type: !103, isLocal: true, isDefinition: true)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression())
!1234 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1425, type: !1222, isLocal: true, isDefinition: true)
!1235 = !DIGlobalVariableExpression(var: !1236, expr: !DIExpression())
!1236 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1425, type: !1237, isLocal: true, isDefinition: true)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 29, lowerBound: 0)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !771, line: 875, type: !372, isLocal: true, isDefinition: true)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !771, line: 407, type: !1115, isLocal: true, isDefinition: true)
!1244 = !DIGlobalVariableExpression(var: !1245, expr: !DIExpression())
!1245 = distinct !DIGlobalVariable(scope: null, file: !771, line: 407, type: !1246, isLocal: true, isDefinition: true)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1247)
!1247 = !{!1248}
!1248 = !DISubrange(count: 19, lowerBound: 0)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1251 = !DIGlobalVariableExpression(var: !1252, expr: !DIExpression())
!1252 = distinct !DIGlobalVariable(scope: null, file: !771, line: 882, type: !442, isLocal: true, isDefinition: true)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression())
!1254 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2067, type: !762, isLocal: true, isDefinition: true)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !173, isLocal: true, isDefinition: true)
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression())
!1258 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2085, type: !647, isLocal: true, isDefinition: true)
!1259 = !DIGlobalVariableExpression(var: !1260, expr: !DIExpression())
!1260 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2090, type: !757, isLocal: true, isDefinition: true)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2101, type: !757, isLocal: true, isDefinition: true)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(scope: null, file: !771, line: 598, type: !442, isLocal: true, isDefinition: true)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !771, line: 573, type: !442, isLocal: true, isDefinition: true)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression())
!1268 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1237, isLocal: true, isDefinition: true)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1957, type: !372, isLocal: true, isDefinition: true)
!1271 = !DIGlobalVariableExpression(var: !1272, expr: !DIExpression())
!1272 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1275, isLocal: true, isDefinition: true)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 34, lowerBound: 0)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1041, type: !442, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !771, line: 488, type: !200, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1222, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !771, line: 247, type: !442, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !771, line: 201, type: !193, isLocal: true, isDefinition: true)
!1288 = !DIGlobalVariableExpression(var: !1289, expr: !DIExpression())
!1289 = distinct !DIGlobalVariable(scope: null, file: !771, line: 209, type: !67, isLocal: true, isDefinition: true)
!1290 = !DIGlobalVariableExpression(var: !1291, expr: !DIExpression())
!1291 = distinct !DIGlobalVariable(scope: null, file: !771, line: 806, type: !200, isLocal: true, isDefinition: true)
!1292 = !DIGlobalVariableExpression(var: !1293, expr: !DIExpression())
!1293 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1117, type: !463, isLocal: true, isDefinition: true)
!1294 = !DIGlobalVariableExpression(var: !1295, expr: !DIExpression())
!1295 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1296, isLocal: true, isDefinition: true)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 50, lowerBound: 0)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1074, type: !103, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1303, isLocal: true, isDefinition: true)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 39, lowerBound: 0)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1308, isLocal: true, isDefinition: true)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 45, lowerBound: 0)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1047, type: !118, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1062, type: !1146, isLocal: true, isDefinition: true)
!1315 = !DIGlobalVariableExpression(var: !1316, expr: !DIExpression())
!1316 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1398, type: !403, isLocal: true, isDefinition: true)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1411, type: !1319, isLocal: true, isDefinition: true)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 26, lowerBound: 0)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1222, isLocal: true, isDefinition: true)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1237, type: !377, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1237, type: !890, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1275, type: !103, isLocal: true, isDefinition: true)
!1330 = !DIGlobalVariableExpression(var: !1331, expr: !DIExpression())
!1331 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1332, isLocal: true, isDefinition: true)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 43, lowerBound: 0)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1303, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1341, type: !433, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1328, type: !463, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1294, type: !426, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1347, isLocal: true, isDefinition: true)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 47, lowerBound: 0)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1987, type: !757, isLocal: true, isDefinition: true)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1354, isLocal: true, isDefinition: true)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 55, lowerBound: 0)
!1357 = !DIGlobalVariableExpression(var: !1358, expr: !DIExpression())
!1358 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !150, isLocal: true, isDefinition: true)
!1359 = !DIGlobalVariableExpression(var: !1360, expr: !DIExpression())
!1360 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1352, type: !421, isLocal: true, isDefinition: true)
!1361 = !DIGlobalVariableExpression(var: !1362, expr: !DIExpression())
!1362 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1315, type: !103, isLocal: true, isDefinition: true)
!1363 = !DIGlobalVariableExpression(var: !1364, expr: !DIExpression())
!1364 = distinct !DIGlobalVariable(scope: null, file: !771, line: 734, type: !442, isLocal: true, isDefinition: true)
!1365 = !DIGlobalVariableExpression(var: !1366, expr: !DIExpression())
!1366 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1303, isLocal: true, isDefinition: true)
!1367 = !DIGlobalVariableExpression(var: !1368, expr: !DIExpression())
!1368 = distinct !DIGlobalVariable(scope: null, file: !771, line: 642, type: !193, isLocal: true, isDefinition: true)
!1369 = !DIGlobalVariableExpression(var: !1370, expr: !DIExpression())
!1370 = distinct !DIGlobalVariable(scope: null, file: !771, line: 642, type: !103, isLocal: true, isDefinition: true)
!1371 = !DIGlobalVariableExpression(var: !1372, expr: !DIExpression())
!1372 = distinct !DIGlobalVariable(scope: null, file: !771, line: 541, type: !372, isLocal: true, isDefinition: true)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression())
!1374 = distinct !DIGlobalVariable(scope: null, file: !771, line: 273, type: !475, isLocal: true, isDefinition: true)
!1375 = !DIGlobalVariableExpression(var: !1376, expr: !DIExpression())
!1376 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !55, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 46, lowerBound: 0)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1218, type: !463, isLocal: true, isDefinition: true)
!1386 = !DIGlobalVariableExpression(var: !1387, expr: !DIExpression())
!1387 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1388, isLocal: true, isDefinition: true)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 48, lowerBound: 0)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1237, isLocal: true, isDefinition: true)
!1397 = !DIGlobalVariableExpression(var: !1398, expr: !DIExpression())
!1398 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1237, isLocal: true, isDefinition: true)
!1399 = !DIGlobalVariableExpression(var: !1400, expr: !DIExpression())
!1400 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1401, isLocal: true, isDefinition: true)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !917)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !771, file: !771, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1716, type: !396, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1716, type: !396, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1791, type: !939, isLocal: true, isDefinition: true)
!1412 = !DIGlobalVariableExpression(var: !1413, expr: !DIExpression())
!1413 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1414 = !DIGlobalVariableExpression(var: !1415, expr: !DIExpression())
!1415 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !372, isLocal: true, isDefinition: true)
!1416 = !DIGlobalVariableExpression(var: !1417, expr: !DIExpression())
!1417 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !426, isLocal: true, isDefinition: true)
!1418 = !DIGlobalVariableExpression(var: !1419, expr: !DIExpression())
!1419 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1303, isLocal: true, isDefinition: true)
!1420 = !DIGlobalVariableExpression(var: !1421, expr: !DIExpression())
!1421 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1825, type: !1422, isLocal: true, isDefinition: true)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 21, lowerBound: 0)
!1425 = !DIGlobalVariableExpression(var: !1426, expr: !DIExpression())
!1426 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1825, type: !193, isLocal: true, isDefinition: true)
!1427 = !DIGlobalVariableExpression(var: !1428, expr: !DIExpression())
!1428 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !168, isLocal: true, isDefinition: true)
!1429 = !DIGlobalVariableExpression(var: !1430, expr: !DIExpression())
!1430 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1879, type: !757, isLocal: true, isDefinition: true)
!1431 = !DIGlobalVariableExpression(var: !1432, expr: !DIExpression())
!1432 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1903, type: !426, isLocal: true, isDefinition: true)
!1433 = !DIGlobalVariableExpression(var: !1434, expr: !DIExpression())
!1434 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1275, isLocal: true, isDefinition: true)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1207, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2125, type: !103, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1332, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !1445, line: 1, type: !1146, isLocal: true, isDefinition: true)
!1445 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1446 = !DIGlobalVariableExpression(var: !1447, expr: !DIExpression())
!1447 = distinct !DIGlobalVariable(scope: null, file: !1445, line: 1, type: !1110, isLocal: true, isDefinition: true)
!1448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1449)
!1449 = !{!1450, !1453, !1455, !1457}
!1450 = !DIGlobalVariableExpression(var: !1451, expr: !DIExpression())
!1451 = distinct !DIGlobalVariable(scope: null, file: !1452, line: 1, type: !762, isLocal: true, isDefinition: true)
!1452 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !1452, line: 1, type: !168, isLocal: true, isDefinition: true)
!1459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1460)
!1460 = !{!0, !50, !52, !1461, !1463, !1465, !1471, !1473, !1475, !58, !61, !1477, !65, !1479, !70, !1481, !1483, !1485, !1488, !72, !77, !83, !1490}
!1461 = !DIGlobalVariableExpression(var: !1462, expr: !DIExpression())
!1462 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1463 = !DIGlobalVariableExpression(var: !1464, expr: !DIExpression())
!1464 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1465 = !DIGlobalVariableExpression(var: !1466, expr: !DIExpression())
!1466 = distinct !DIGlobalVariable(scope: null, file: !1467, line: 1, type: !1468, isLocal: true, isDefinition: true)
!1467 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 62, lowerBound: 0)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !1467, line: 1, type: !1468, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !762, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !108, isLocal: true, isDefinition: true)
!1479 = !DIGlobalVariableExpression(var: !1480, expr: !DIExpression())
!1480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !762, isLocal: true, isDefinition: true)
!1481 = !DIGlobalVariableExpression(var: !1482, expr: !DIExpression())
!1482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !762, isLocal: true, isDefinition: true)
!1483 = !DIGlobalVariableExpression(var: !1484, expr: !DIExpression())
!1484 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !372, isLocal: true, isDefinition: true)
!1485 = !DIGlobalVariableExpression(var: !1486, expr: !DIExpression())
!1486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1487, isLocal: true, isDefinition: true)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !974)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !421, isLocal: true, isDefinition: true)
!1490 = !DIGlobalVariableExpression(var: !1491, expr: !DIExpression())
!1491 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1494)
!1494 = !{!1495, !1498, !1500, !1503, !1505, !1508, !1510, !1512, !1514, !1516, !1519, !1521, !1523, !1526, !1529, !1532, !1535, !1537, !1539, !1541, !1558, !1560, !1563, !1566, !100, !106, !111, !1568, !1570, !116, !1572, !121, !1574, !1576, !1578, !1580, !1582, !1584, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !126, !1631, !129, !1633, !132, !1639, !1641, !1643, !1645, !134, !136, !1647, !1649, !1651, !1653, !1655, !138, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !140, !1721, !1723, !1726, !1728}
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1497, file: !1497, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1497 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1498 = !DIGlobalVariableExpression(var: !1499, expr: !DIExpression())
!1499 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1497, file: !1497, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1500 = !DIGlobalVariableExpression(var: !1501, expr: !DIExpression())
!1501 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1502, file: !1502, line: 9, type: !517, isLocal: false, isDefinition: true, align: 64)
!1502 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !128, file: !128, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !1507, line: 210, type: !1487, isLocal: true, isDefinition: true)
!1507 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(scope: null, file: !1507, line: 267, type: !1487, isLocal: true, isDefinition: true)
!1510 = !DIGlobalVariableExpression(var: !1511, expr: !DIExpression())
!1511 = distinct !DIGlobalVariable(scope: null, file: !1507, line: 348, type: !67, isLocal: true, isDefinition: true)
!1512 = !DIGlobalVariableExpression(var: !1513, expr: !DIExpression())
!1513 = distinct !DIGlobalVariable(scope: null, file: !1507, line: 358, type: !118, isLocal: true, isDefinition: true)
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1507, file: !1507, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(scope: null, file: !1518, line: 1, type: !108, isLocal: true, isDefinition: true)
!1518 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1519 = !DIGlobalVariableExpression(var: !1520, expr: !DIExpression())
!1520 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(scope: null, file: !1525, line: 13, type: !103, isLocal: true, isDefinition: true)
!1525 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1528, file: !1528, line: 142, type: !346, isLocal: false, isDefinition: true, align: 64)
!1528 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1531, file: !1531, line: 10, type: !360, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !1534, file: !1534, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1534 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1535 = !DIGlobalVariableExpression(var: !1536, expr: !DIExpression())
!1536 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !1534, file: !1534, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(scope: null, file: !1534, line: 61, type: !178, isLocal: true, isDefinition: true)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1534, line: 93, type: !74, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !1534, file: !1534, line: 112, type: !1543, isLocal: false, isDefinition: true, align: 64)
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
!1559 = distinct !DIGlobalVariable(scope: null, file: !1534, line: 135, type: !1275, isLocal: true, isDefinition: true)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !1562, line: 616, type: !890, isLocal: true, isDefinition: true)
!1562 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 80, type: !890, isLocal: true, isDefinition: true)
!1565 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 89, type: !123, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !102, line: 103, type: !1487, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !102, line: 122, type: !123, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !102, line: 189, type: !55, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !102, line: 199, type: !123, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !102, line: 205, type: !108, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !102, line: 212, type: !1222, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !102, line: 217, type: !1487, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !102, line: 222, type: !939, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !102, line: 227, type: !939, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !102, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !890, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1487, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !118, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !403, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !200, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !372, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !372, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !200, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !372, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !372, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !113, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !113, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !372, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !200, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !200, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !372, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !442, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1528, line: 36, type: !475, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1528, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !128, file: !128, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !128, file: !128, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !364, !369}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !128, line: 160, type: !205, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !128, line: 163, type: !426, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !128, line: 165, type: !426, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !128, line: 167, type: !103, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !128, file: !128, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !128, file: !128, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !128, file: !128, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !128, line: 317, type: !1146, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !128, file: !128, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !128, line: 365, type: !403, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !128, line: 382, type: !403, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !128, line: 392, type: !403, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !128, file: !128, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !965)
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
!1682 = distinct !DIGlobalVariable(scope: null, file: !128, line: 458, type: !1207, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !128, line: 514, type: !1146, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !346, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !499)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !346, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !200, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !200, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !200, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !475, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !142, file: !142, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !142, file: !142, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !142, file: !142, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !142, file: !142, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !205, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !205, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !421, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1739)
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
!1746 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1747, file: !1747, line: 153, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1751)
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
!1758 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1759, file: !1759, line: 77, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1763)
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
!1773 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1774, file: !1774, line: 53, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1778)
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
!1784 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1787)
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
!1795 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1797)
!1796 = !DISubroutineType(types: !1737)
!1797 = !{!1794}
!1798 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 132, column: 21, scope: !1784)
!1800 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !1799)
!1801 = !DILocalVariable(name: "x", arg: 1, scope: !1802, file: !1747, line: 156, type: !1750)
!1802 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1747, file: !1747, line: 156, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1805)
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
!1814 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1759, file: !1759, line: 99, type: !1815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1817)
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
!1833 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1774, file: !1774, line: 25, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1836)
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
!1882 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!60}
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "sig", arg: 1, scope: !1882, file: !2, line: 266, type: !60)
!1887 = !DILocalVariable(name: "stackBottom", scope: !1882, file: !2, line: 28, type: !21)
!1888 = !DILocation(line: 266, column: 6, scope: !1882)
!1889 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !1894)
!1890 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1892)
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
!1902 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1528, file: !1528, line: 58, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!1903 = distinct !DILocation(line: 268, column: 49, scope: !1882)
!1904 = !DILocation(line: 268, column: 39, scope: !1882)
!1905 = !DILocation(line: 268, column: 18, scope: !1882)
!1906 = !DILocalVariable(name: "wg", arg: 1, scope: !1907, file: !2, line: 163, type: !1910)
!1907 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !1911)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!1911 = !{!1906}
!1912 = !DILocation(line: 163, column: 22, scope: !1907, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 271, column: 20, scope: !1882)
!1914 = !DILocation(line: 164, column: 5, scope: !1907, inlinedAt: !1913)
!1915 = !DILocalVariable(name: "x", arg: 1, scope: !1916, file: !1747, line: 161, type: !1750)
!1916 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1747, file: !1747, line: 161, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1917)
!1917 = !{!1915, !1918}
!1918 = !DILocalVariable(name: "delta", arg: 2, scope: !1916, file: !1747, line: 161, type: !43)
!1919 = !DILocation(line: 161, column: 18, scope: !1916, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 164, column: 13, scope: !1907, inlinedAt: !1913)
!1921 = !DILocation(line: 161, column: 69, scope: !1916, inlinedAt: !1920)
!1922 = !DILocation(line: 161, column: 74, scope: !1916, inlinedAt: !1920)
!1923 = !DILocalVariable(name: "addr", arg: 1, scope: !1924, file: !1759, line: 123, type: !1762)
!1924 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1759, file: !1759, line: 123, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1925)
!1925 = !{!1923, !1926}
!1926 = !DILocalVariable(name: "delta", arg: 2, scope: !1924, file: !1759, line: 123, type: !43)
!1927 = !DILocation(line: 123, column: 6, scope: !1924, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 161, column: 67, scope: !1916, inlinedAt: !1920)
!1929 = !DILocation(line: 164, column: 26, scope: !1907, inlinedAt: !1913)
!1930 = !DILocation(line: 0, scope: !1907, inlinedAt: !1913)
!1931 = !DILocation(line: 165, column: 3, scope: !1907, inlinedAt: !1913)
!1932 = !DILocalVariable(name: "f", arg: 1, scope: !1933, file: !1774, line: 58, type: !1777)
!1933 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1774, file: !1774, line: 58, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1934)
!1934 = !{!1932}
!1935 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 165, column: 15, scope: !1907, inlinedAt: !1913)
!1937 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !1936)
!1938 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !1936)
!1939 = !DILocalVariable(name: "x", arg: 1, scope: !1940, file: !1747, line: 147, type: !1750)
!1940 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1747, file: !1747, line: 147, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1750}
!1943 = !{!1939}
!1944 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 274, column: 18, scope: !1882)
!1946 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !1945)
!1947 = !DILocalVariable(name: "addr", arg: 1, scope: !1948, file: !1759, line: 183, type: !1762)
!1948 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1759, file: !1759, line: 183, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1951)
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
!1977 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !102, file: !102, line: 85, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !1980)
!1978 = !DISubroutineType(cc: DW_CC_nocall, types: !1979)
!1979 = !{!360}
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "msg", arg: 1, scope: !1977, file: !102, line: 85, type: !360)
!1982 = !DILocation(line: 85, column: 6, scope: !1977)
!1983 = !DILocation(line: 88, column: 30, scope: !1977)
!1984 = !DILocation(line: 88, column: 35, scope: !1977)
!1985 = !DILocation(line: 88, column: 16, scope: !1977)
!1986 = !DILocation(line: 89, column: 2, scope: !1977)
!1987 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !102, file: !102, line: 91, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !1990)
!1988 = !DISubroutineType(cc: DW_CC_nocall, types: !1989)
!1989 = !{!9, !360}
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "addr", arg: 1, scope: !1987, file: !102, line: 91, type: !9)
!1992 = !DILocalVariable(name: "msg", arg: 2, scope: !1987, file: !102, line: 91, type: !360)
!1993 = !DILocation(line: 91, column: 6, scope: !1987)
!1994 = !DILocation(line: 99, column: 14, scope: !1987)
!1995 = !DILocation(line: 100, column: 20, scope: !1987)
!1996 = !DILocation(line: 100, column: 19, scope: !1987)
!1997 = !DILocation(line: 100, column: 26, scope: !1987)
!1998 = !DILocation(line: 100, column: 11, scope: !1987)
!1999 = !DILocation(line: 101, column: 14, scope: !1987)
!2000 = !DILocation(line: 105, column: 14, scope: !1987)
!2001 = !DILocation(line: 105, column: 13, scope: !1987)
!2002 = !DILocation(line: 106, column: 9, scope: !1987)
!2003 = !DILocation(line: 107, column: 7, scope: !1987)
!2004 = !DILocation(line: 108, column: 2, scope: !1987)
!2005 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2006)
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "s", arg: 1, scope: !2005, file: !1602, line: 12, type: !360)
!2008 = !DILocalVariable(name: "i", scope: !2005, file: !1602, line: 13, type: !2009)
!2009 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!2010 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2016)
!2011 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !128, file: !128, line: 214, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!160}
!2014 = !{!2015}
!2015 = !DILocalVariable(name: "c", arg: 1, scope: !2011, file: !128, line: 214, type: !160)
!2016 = distinct !DILocation(line: 14, column: 10, scope: !2005)
!2017 = !DILocation(line: 12, column: 6, scope: !2005)
!2018 = !DILocation(line: 13, column: 6, scope: !2005)
!2019 = !DILocation(line: 13, column: 22, scope: !2005)
!2020 = !DILocation(line: 0, scope: !2005)
!2021 = !DILocation(line: 14, column: 13, scope: !2005)
!2022 = !DILocation(line: 14, column: 11, scope: !2005)
!2023 = !DILocation(line: 14, column: 12, scope: !2005)
!2024 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2016)
!2025 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2016)
!2026 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2016)
!2027 = !DILocation(line: 13, column: 26, scope: !2005)
!2028 = !DILocation(line: 13, column: 14, scope: !2005)
!2029 = !DILocation(line: 13, column: 16, scope: !2005)
!2030 = !DILocation(line: 16, column: 2, scope: !2005)
!2031 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2034)
!2032 = !DISubroutineType(cc: DW_CC_nocall, types: !2033)
!2033 = !{!21}
!2034 = !{!2035, !2036, !2037}
!2035 = !DILocalVariable(name: "ptr", arg: 1, scope: !2031, file: !1602, line: 371, type: !21)
!2036 = !DILocalVariable(name: "i", scope: !2031, file: !1602, line: 378, type: !2009)
!2037 = !DILocalVariable(name: "nibble", scope: !2031, file: !1602, line: 379, type: !160)
!2038 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 383, column: 11, scope: !2031)
!2040 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 381, column: 11, scope: !2031)
!2042 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 377, column: 9, scope: !2031)
!2044 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 376, column: 9, scope: !2031)
!2046 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 373, column: 14, scope: !2031)
!2049 = !DILocation(line: 371, column: 6, scope: !2031)
!2050 = !DILocation(line: 372, column: 5, scope: !2031)
!2051 = !DILocation(line: 372, column: 9, scope: !2031)
!2052 = !DILocation(line: 0, scope: !2031)
!2053 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2048)
!2054 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2048)
!2055 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2047)
!2056 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2047)
!2057 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2047)
!2058 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2048)
!2059 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2045)
!2060 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2045)
!2061 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2045)
!2062 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2045)
!2063 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2043)
!2064 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2043)
!2065 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2043)
!2066 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2043)
!2067 = !DILocation(line: 378, column: 6, scope: !2031)
!2068 = !DILocation(line: 378, column: 14, scope: !2031)
!2069 = !DILocation(line: 379, column: 18, scope: !2031)
!2070 = !DILocation(line: 379, column: 22, scope: !2031)
!2071 = !DILocation(line: 379, column: 17, scope: !2031)
!2072 = !DILocation(line: 379, column: 3, scope: !2031)
!2073 = !DILocation(line: 380, column: 6, scope: !2031)
!2074 = !DILocation(line: 380, column: 13, scope: !2031)
!2075 = !DILocation(line: 381, column: 12, scope: !2031)
!2076 = !DILocation(line: 381, column: 19, scope: !2031)
!2077 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2041)
!2078 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2041)
!2079 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2041)
!2080 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2041)
!2081 = !DILocation(line: 385, column: 3, scope: !2031)
!2082 = !DILocation(line: 378, column: 45, scope: !2031)
!2083 = !DILocation(line: 378, column: 16, scope: !2031)
!2084 = !DILocation(line: 383, column: 12, scope: !2031)
!2085 = !DILocation(line: 383, column: 24, scope: !2031)
!2086 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2039)
!2087 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2039)
!2088 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2039)
!2089 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2039)
!2090 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2091 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2092 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 290, column: 9, scope: !2090)
!2094 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2093)
!2095 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2093)
!2096 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2093)
!2097 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2093)
!2098 = !DILocation(line: 291, column: 2, scope: !2090)
!2099 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !102, file: !102, line: 183, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2100 = !DILocation(line: 184, column: 30, scope: !2099)
!2101 = !DILocation(line: 184, column: 16, scope: !2099)
!2102 = !DILocation(line: 185, column: 2, scope: !2099)
!2103 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !102, file: !102, line: 193, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2104 = !DILocation(line: 194, column: 30, scope: !2103)
!2105 = !DILocation(line: 194, column: 16, scope: !2103)
!2106 = !DILocation(line: 195, column: 2, scope: !2103)
!2107 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !102, file: !102, line: 58, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2111)
!2108 = !DISubroutineType(cc: DW_CC_nocall, types: !2109)
!2109 = !{!499, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2111 = !{!2112, !2113, !2114, !2126, !2127}
!2112 = !DILocalVariable(name: "message", arg: 1, scope: !2107, file: !102, line: 58, type: !499)
!2113 = !DILocalVariable(name: "panicking", arg: 2, scope: !2107, file: !102, line: 58, type: !2110)
!2114 = !DILocalVariable(name: "frame", scope: !2107, file: !102, line: 65, type: !2115)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64, align: 64, dwarfAddressSpace: 0)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2117)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2123, !2124, !2125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2122, align: 64, offset: 128)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !965)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2115, size: 64, align: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2110, size: 8, align: 8, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !499, size: 128, align: 64, offset: 256)
!2126 = !DILocalVariable(name: "PanicValue", scope: !2107, file: !102, line: 42, type: !499)
!2127 = !DILocalVariable(name: "Panicking", scope: !2107, file: !102, line: 41, type: !2110)
!2128 = !DILocation(line: 58, column: 6, scope: !2107)
!2129 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 65, column: 38, scope: !2107)
!2131 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2130)
!2132 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2130)
!2133 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2130)
!2134 = !DILocation(line: 0, scope: !1890, inlinedAt: !2130)
!2135 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2130)
!2136 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2130)
!2137 = !DILocation(line: 65, column: 41, scope: !2107)
!2138 = !DILocation(line: 65, column: 3, scope: !2107)
!2139 = !DILocation(line: 66, column: 6, scope: !2107)
!2140 = !DILocation(line: 66, column: 12, scope: !2107)
!2141 = !DILocation(line: 0, scope: !2107)
!2142 = !DILocation(line: 67, column: 4, scope: !2107)
!2143 = !DILocation(line: 67, column: 23, scope: !2107)
!2144 = !DILocation(line: 67, column: 10, scope: !2107)
!2145 = !DILocation(line: 68, column: 4, scope: !2107)
!2146 = !DILocation(line: 68, column: 22, scope: !2107)
!2147 = !DILocation(line: 68, column: 10, scope: !2107)
!2148 = !DILocation(line: 69, column: 19, scope: !2107)
!2149 = !DILocation(line: 69, column: 18, scope: !2107)
!2150 = !DILocation(line: 73, column: 5, scope: !2107)
!2151 = !DILocation(line: 78, column: 13, scope: !2107)
!2152 = !DILocation(line: 79, column: 11, scope: !2107)
!2153 = !DILocation(line: 79, column: 10, scope: !2107)
!2154 = !DILocation(line: 80, column: 9, scope: !2107)
!2155 = !DILocation(line: 81, column: 7, scope: !2107)
!2156 = !DILocation(line: 82, column: 2, scope: !2107)
!2157 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2160)
!2158 = !DISubroutineType(cc: DW_CC_nocall, types: !2159)
!2159 = !{!499}
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2167, !2168, !2169, !2171, !2172, !2173, !2174, !2175, !2176, !2178, !2179, !2181, !2183, !2184, !2185, !2187}
!2161 = !DILocalVariable(name: "msg", arg: 1, scope: !2157, file: !1602, line: 293, type: !499)
!2162 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !47)
!2163 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2009)
!2164 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !91)
!2165 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2166)
!2166 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2167 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !60)
!2168 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !1699)
!2169 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2170)
!2170 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2171 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !45)
!2172 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !98)
!2173 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !43)
!2174 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !11)
!2175 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !21)
!2176 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2177)
!2177 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2178 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !517)
!2179 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2180)
!2180 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2181 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2182)
!2182 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2183 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !360)
!2184 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !498)
!2185 = !DILocalVariable(name: "msg", scope: !2157, file: !1602, line: 294, type: !2186)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !499)
!2187 = !DILocalVariable(name: "itf", scope: !2157, file: !1602, line: 345, type: !499)
!2188 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 338, column: 14, scope: !2157)
!2191 = !DILocation(line: 293, column: 6, scope: !2157)
!2192 = !DILocation(line: 294, column: 16, scope: !2157)
!2193 = !DILocation(line: 338, column: 15, scope: !2157)
!2194 = !DILocation(line: 12, column: 6, scope: !2005, inlinedAt: !2190)
!2195 = !DILocation(line: 13, column: 6, scope: !2005, inlinedAt: !2190)
!2196 = !DILocation(line: 13, column: 22, scope: !2005, inlinedAt: !2190)
!2197 = !DILocation(line: 0, scope: !2005, inlinedAt: !2190)
!2198 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2190)
!2199 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2190)
!2200 = !DILocation(line: 14, column: 12, scope: !2005, inlinedAt: !2190)
!2201 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2189)
!2202 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2189)
!2203 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2189)
!2204 = !DILocation(line: 13, column: 26, scope: !2005, inlinedAt: !2190)
!2205 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2190)
!2206 = !DILocation(line: 13, column: 16, scope: !2005, inlinedAt: !2190)
!2207 = !DILocation(line: 352, column: 2, scope: !2157)
!2208 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !102, file: !102, line: 54, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2209)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "message", arg: 1, scope: !2208, file: !102, line: 54, type: !499)
!2211 = !DILocation(line: 54, column: 6, scope: !2208)
!2212 = !DILocation(line: 55, column: 16, scope: !2208)
!2213 = !DILocation(line: 55, column: 15, scope: !2208)
!2214 = !DILocation(line: 56, column: 2, scope: !2208)
!2215 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1502, file: !1502, line: 60, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!517, !517}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "x", arg: 1, scope: !2215, file: !1502, line: 60, type: !517)
!2220 = !DILocalVariable(name: "y", arg: 2, scope: !2215, file: !1502, line: 60, type: !517)
!2221 = !DILocation(line: 60, column: 6, scope: !2215)
!2222 = !DILocation(line: 61, column: 24, scope: !2215)
!2223 = !DILocation(line: 61, column: 27, scope: !2215)
!2224 = !DILocalVariable(name: "x", arg: 1, scope: !2225, file: !1502, line: 87, type: !517)
!2225 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1502, file: !1502, line: 87, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2226)
!2226 = !{!2224, !2227}
!2227 = !DILocalVariable(name: "y", arg: 2, scope: !2225, file: !1502, line: 87, type: !517)
!2228 = !DILocation(line: 87, column: 6, scope: !2225, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 61, column: 23, scope: !2215)
!2230 = !DILocation(line: 88, column: 38, scope: !2225, inlinedAt: !2229)
!2231 = !DILocation(line: 88, column: 41, scope: !2225, inlinedAt: !2229)
!2232 = !DILocalVariable(name: "x", arg: 1, scope: !2233, file: !1502, line: 101, type: !517)
!2233 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1502, file: !1502, line: 101, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!517, !517, !1699, !1699}
!2236 = !{!2232, !2237, !2238, !2239, !2240, !2241}
!2237 = !DILocalVariable(name: "y", arg: 2, scope: !2233, file: !1502, line: 101, type: !517)
!2238 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2233, file: !1502, line: 101, type: !1699)
!2239 = !DILocalVariable(name: "magMask", arg: 4, scope: !2233, file: !1502, line: 101, type: !1699)
!2240 = !DILocalVariable(name: "xBits", scope: !2233, file: !1502, line: 102, type: !499)
!2241 = !DILocalVariable(name: "yBits", scope: !2233, file: !1502, line: 103, type: !499)
!2242 = !DILocation(line: 101, column: 6, scope: !2233, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 88, column: 37, scope: !2225, inlinedAt: !2229)
!2244 = !DILocation(line: 102, column: 11, scope: !2233, inlinedAt: !2243)
!2245 = !DILocation(line: 102, column: 2, scope: !2233, inlinedAt: !2243)
!2246 = !DILocation(line: 103, column: 11, scope: !2233, inlinedAt: !2243)
!2247 = !DILocation(line: 103, column: 2, scope: !2233, inlinedAt: !2243)
!2248 = !DILocation(line: 107, column: 7, scope: !2233, inlinedAt: !2243)
!2249 = !DILocation(line: 107, column: 16, scope: !2233, inlinedAt: !2243)
!2250 = !DILocation(line: 107, column: 13, scope: !2233, inlinedAt: !2243)
!2251 = !DILocation(line: 0, scope: !2233, inlinedAt: !2243)
!2252 = !DILocation(line: 109, column: 7, scope: !2233, inlinedAt: !2243)
!2253 = !DILocation(line: 109, column: 16, scope: !2233, inlinedAt: !2243)
!2254 = !DILocation(line: 109, column: 13, scope: !2233, inlinedAt: !2243)
!2255 = !DILocation(line: 118, column: 5, scope: !2233, inlinedAt: !2243)
!2256 = !DILocation(line: 118, column: 11, scope: !2233, inlinedAt: !2243)
!2257 = !DILocation(line: 121, column: 5, scope: !2233, inlinedAt: !2243)
!2258 = !DILocation(line: 121, column: 11, scope: !2233, inlinedAt: !2243)
!2259 = !DILocation(line: 124, column: 5, scope: !2233, inlinedAt: !2243)
!2260 = !DILocation(line: 124, column: 14, scope: !2233, inlinedAt: !2243)
!2261 = !DILocation(line: 124, column: 11, scope: !2233, inlinedAt: !2243)
!2262 = !DILocation(line: 61, column: 2, scope: !2215)
!2263 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1502, file: !1502, line: 65, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2177, !2177}
!2266 = !{!2267, !2268}
!2267 = !DILocalVariable(name: "x", arg: 1, scope: !2263, file: !1502, line: 65, type: !2177)
!2268 = !DILocalVariable(name: "y", arg: 2, scope: !2263, file: !1502, line: 65, type: !2177)
!2269 = !DILocation(line: 65, column: 6, scope: !2263)
!2270 = !DILocation(line: 66, column: 24, scope: !2263)
!2271 = !DILocation(line: 66, column: 27, scope: !2263)
!2272 = !DILocalVariable(name: "x", arg: 1, scope: !2273, file: !1502, line: 83, type: !2177)
!2273 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1502, file: !1502, line: 83, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2274)
!2274 = !{!2272, !2275}
!2275 = !DILocalVariable(name: "y", arg: 2, scope: !2273, file: !1502, line: 83, type: !2177)
!2276 = !DILocation(line: 83, column: 6, scope: !2273, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 66, column: 23, scope: !2263)
!2278 = !DILocation(line: 84, column: 38, scope: !2273, inlinedAt: !2277)
!2279 = !DILocation(line: 84, column: 41, scope: !2273, inlinedAt: !2277)
!2280 = !DILocalVariable(name: "x", arg: 1, scope: !2281, file: !1502, line: 101, type: !2177)
!2281 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1502, file: !1502, line: 101, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2177, !2177, !60, !60}
!2284 = !{!2280, !2285, !2286, !2287, !2288, !2289}
!2285 = !DILocalVariable(name: "y", arg: 2, scope: !2281, file: !1502, line: 101, type: !2177)
!2286 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2281, file: !1502, line: 101, type: !60)
!2287 = !DILocalVariable(name: "magMask", arg: 4, scope: !2281, file: !1502, line: 101, type: !60)
!2288 = !DILocalVariable(name: "xBits", scope: !2281, file: !1502, line: 102, type: !499)
!2289 = !DILocalVariable(name: "yBits", scope: !2281, file: !1502, line: 103, type: !499)
!2290 = !DILocation(line: 101, column: 6, scope: !2281, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 84, column: 37, scope: !2273, inlinedAt: !2277)
!2292 = !DILocation(line: 102, column: 11, scope: !2281, inlinedAt: !2291)
!2293 = !DILocation(line: 102, column: 2, scope: !2281, inlinedAt: !2291)
!2294 = !DILocation(line: 103, column: 11, scope: !2281, inlinedAt: !2291)
!2295 = !DILocation(line: 103, column: 2, scope: !2281, inlinedAt: !2291)
!2296 = !DILocation(line: 107, column: 7, scope: !2281, inlinedAt: !2291)
!2297 = !DILocation(line: 107, column: 16, scope: !2281, inlinedAt: !2291)
!2298 = !DILocation(line: 107, column: 13, scope: !2281, inlinedAt: !2291)
!2299 = !DILocation(line: 0, scope: !2281, inlinedAt: !2291)
!2300 = !DILocation(line: 109, column: 7, scope: !2281, inlinedAt: !2291)
!2301 = !DILocation(line: 109, column: 16, scope: !2281, inlinedAt: !2291)
!2302 = !DILocation(line: 109, column: 13, scope: !2281, inlinedAt: !2291)
!2303 = !DILocation(line: 118, column: 5, scope: !2281, inlinedAt: !2291)
!2304 = !DILocation(line: 118, column: 11, scope: !2281, inlinedAt: !2291)
!2305 = !DILocation(line: 121, column: 5, scope: !2281, inlinedAt: !2291)
!2306 = !DILocation(line: 121, column: 11, scope: !2281, inlinedAt: !2291)
!2307 = !DILocation(line: 124, column: 5, scope: !2281, inlinedAt: !2291)
!2308 = !DILocation(line: 124, column: 14, scope: !2281, inlinedAt: !2291)
!2309 = !DILocation(line: 124, column: 11, scope: !2281, inlinedAt: !2291)
!2310 = !DILocation(line: 66, column: 2, scope: !2263)
!2311 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1502, file: !1502, line: 70, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2312)
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "x", arg: 1, scope: !2311, file: !1502, line: 70, type: !517)
!2314 = !DILocalVariable(name: "y", arg: 2, scope: !2311, file: !1502, line: 70, type: !517)
!2315 = !DILocation(line: 70, column: 6, scope: !2311)
!2316 = !DILocation(line: 71, column: 24, scope: !2311)
!2317 = !DILocation(line: 71, column: 27, scope: !2311)
!2318 = !DILocalVariable(name: "x", arg: 1, scope: !2319, file: !1502, line: 95, type: !517)
!2319 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1502, file: !1502, line: 95, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2320)
!2320 = !{!2318, !2321}
!2321 = !DILocalVariable(name: "y", arg: 2, scope: !2319, file: !1502, line: 95, type: !517)
!2322 = !DILocation(line: 95, column: 6, scope: !2319, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 71, column: 23, scope: !2311)
!2324 = !DILocation(line: 96, column: 38, scope: !2319, inlinedAt: !2323)
!2325 = !DILocation(line: 96, column: 41, scope: !2319, inlinedAt: !2323)
!2326 = !DILocalVariable(name: "x", arg: 1, scope: !2327, file: !1502, line: 133, type: !517)
!2327 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1502, file: !1502, line: 133, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2328)
!2328 = !{!2326, !2329, !2330, !2331, !2332, !2333, !2334}
!2329 = !DILocalVariable(name: "y", arg: 2, scope: !2327, file: !1502, line: 133, type: !517)
!2330 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2327, file: !1502, line: 133, type: !1699)
!2331 = !DILocalVariable(name: "magMask", arg: 4, scope: !2327, file: !1502, line: 133, type: !1699)
!2332 = !DILocalVariable(name: "xBits", scope: !2327, file: !1502, line: 134, type: !499)
!2333 = !DILocalVariable(name: "yBits", scope: !2327, file: !1502, line: 135, type: !499)
!2334 = !DILocalVariable(name: "maxNegNaN", scope: !2327, file: !1502, line: 149, type: !499)
!2335 = !DILocation(line: 133, column: 6, scope: !2327, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 96, column: 37, scope: !2319, inlinedAt: !2323)
!2337 = !DILocation(line: 134, column: 11, scope: !2327, inlinedAt: !2336)
!2338 = !DILocation(line: 134, column: 2, scope: !2327, inlinedAt: !2336)
!2339 = !DILocation(line: 135, column: 11, scope: !2327, inlinedAt: !2336)
!2340 = !DILocation(line: 135, column: 2, scope: !2327, inlinedAt: !2336)
!2341 = !DILocation(line: 142, column: 5, scope: !2327, inlinedAt: !2336)
!2342 = !DILocation(line: 142, column: 11, scope: !2327, inlinedAt: !2336)
!2343 = !DILocation(line: 0, scope: !2327, inlinedAt: !2336)
!2344 = !DILocation(line: 145, column: 5, scope: !2327, inlinedAt: !2336)
!2345 = !DILocation(line: 145, column: 11, scope: !2327, inlinedAt: !2336)
!2346 = !DILocation(line: 149, column: 16, scope: !2327, inlinedAt: !2336)
!2347 = !DILocation(line: 149, column: 2, scope: !2327, inlinedAt: !2336)
!2348 = !DILocation(line: 151, column: 7, scope: !2327, inlinedAt: !2336)
!2349 = !DILocation(line: 151, column: 16, scope: !2327, inlinedAt: !2336)
!2350 = !DILocation(line: 151, column: 13, scope: !2327, inlinedAt: !2336)
!2351 = !DILocation(line: 153, column: 7, scope: !2327, inlinedAt: !2336)
!2352 = !DILocation(line: 153, column: 16, scope: !2327, inlinedAt: !2336)
!2353 = !DILocation(line: 153, column: 13, scope: !2327, inlinedAt: !2336)
!2354 = !DILocation(line: 156, column: 5, scope: !2327, inlinedAt: !2336)
!2355 = !DILocation(line: 156, column: 14, scope: !2327, inlinedAt: !2336)
!2356 = !DILocation(line: 156, column: 11, scope: !2327, inlinedAt: !2336)
!2357 = !DILocation(line: 71, column: 2, scope: !2311)
!2358 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1502, file: !1502, line: 75, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2359)
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "x", arg: 1, scope: !2358, file: !1502, line: 75, type: !2177)
!2361 = !DILocalVariable(name: "y", arg: 2, scope: !2358, file: !1502, line: 75, type: !2177)
!2362 = !DILocation(line: 75, column: 6, scope: !2358)
!2363 = !DILocation(line: 76, column: 24, scope: !2358)
!2364 = !DILocation(line: 76, column: 27, scope: !2358)
!2365 = !DILocalVariable(name: "x", arg: 1, scope: !2366, file: !1502, line: 91, type: !2177)
!2366 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1502, file: !1502, line: 91, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2367)
!2367 = !{!2365, !2368}
!2368 = !DILocalVariable(name: "y", arg: 2, scope: !2366, file: !1502, line: 91, type: !2177)
!2369 = !DILocation(line: 91, column: 6, scope: !2366, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 76, column: 23, scope: !2358)
!2371 = !DILocation(line: 92, column: 38, scope: !2366, inlinedAt: !2370)
!2372 = !DILocation(line: 92, column: 41, scope: !2366, inlinedAt: !2370)
!2373 = !DILocalVariable(name: "x", arg: 1, scope: !2374, file: !1502, line: 133, type: !2177)
!2374 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1502, file: !1502, line: 133, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2375)
!2375 = !{!2373, !2376, !2377, !2378, !2379, !2380, !2381}
!2376 = !DILocalVariable(name: "y", arg: 2, scope: !2374, file: !1502, line: 133, type: !2177)
!2377 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2374, file: !1502, line: 133, type: !60)
!2378 = !DILocalVariable(name: "magMask", arg: 4, scope: !2374, file: !1502, line: 133, type: !60)
!2379 = !DILocalVariable(name: "xBits", scope: !2374, file: !1502, line: 134, type: !499)
!2380 = !DILocalVariable(name: "yBits", scope: !2374, file: !1502, line: 135, type: !499)
!2381 = !DILocalVariable(name: "maxNegNaN", scope: !2374, file: !1502, line: 149, type: !499)
!2382 = !DILocation(line: 133, column: 6, scope: !2374, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 92, column: 37, scope: !2366, inlinedAt: !2370)
!2384 = !DILocation(line: 134, column: 11, scope: !2374, inlinedAt: !2383)
!2385 = !DILocation(line: 134, column: 2, scope: !2374, inlinedAt: !2383)
!2386 = !DILocation(line: 135, column: 11, scope: !2374, inlinedAt: !2383)
!2387 = !DILocation(line: 135, column: 2, scope: !2374, inlinedAt: !2383)
!2388 = !DILocation(line: 142, column: 5, scope: !2374, inlinedAt: !2383)
!2389 = !DILocation(line: 142, column: 11, scope: !2374, inlinedAt: !2383)
!2390 = !DILocation(line: 0, scope: !2374, inlinedAt: !2383)
!2391 = !DILocation(line: 145, column: 5, scope: !2374, inlinedAt: !2383)
!2392 = !DILocation(line: 145, column: 11, scope: !2374, inlinedAt: !2383)
!2393 = !DILocation(line: 149, column: 16, scope: !2374, inlinedAt: !2383)
!2394 = !DILocation(line: 149, column: 2, scope: !2374, inlinedAt: !2383)
!2395 = !DILocation(line: 151, column: 7, scope: !2374, inlinedAt: !2383)
!2396 = !DILocation(line: 151, column: 16, scope: !2374, inlinedAt: !2383)
!2397 = !DILocation(line: 151, column: 13, scope: !2374, inlinedAt: !2383)
!2398 = !DILocation(line: 153, column: 7, scope: !2374, inlinedAt: !2383)
!2399 = !DILocation(line: 153, column: 16, scope: !2374, inlinedAt: !2383)
!2400 = !DILocation(line: 153, column: 13, scope: !2374, inlinedAt: !2383)
!2401 = !DILocation(line: 156, column: 5, scope: !2374, inlinedAt: !2383)
!2402 = !DILocation(line: 156, column: 14, scope: !2374, inlinedAt: !2383)
!2403 = !DILocation(line: 156, column: 11, scope: !2374, inlinedAt: !2383)
!2404 = !DILocation(line: 76, column: 2, scope: !2358)
!2405 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1534, file: !1534, line: 46, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2406 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 193, column: 20, scope: !2408, inlinedAt: !2416)
!2408 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415}
!2410 = !DILocalVariable(name: "current", scope: !2408, file: !2, line: 193, type: !3)
!2411 = !DILocalVariable(name: "otherGoroutines", scope: !2408, file: !2, line: 99, type: !43)
!2412 = !DILocalVariable(name: "scanWaitGroup", scope: !2408, file: !2, line: 151, type: !79)
!2413 = !DILocalVariable(name: "activeTasks", scope: !2408, file: !2, line: 45, type: !3)
!2414 = !DILocalVariable(name: "t", scope: !2408, file: !2, line: 212, type: !3)
!2415 = !DILocalVariable(name: "t", scope: !2408, file: !2, line: 223, type: !3)
!2416 = distinct !DILocation(line: 8, column: 25, scope: !2417, inlinedAt: !2419)
!2417 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2418, file: !2418, line: 7, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2418 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2419 = distinct !DILocation(line: 48, column: 17, scope: !2405)
!2420 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2407)
!2421 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2407)
!2422 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2407)
!2423 = !DILocation(line: 0, scope: !1890, inlinedAt: !2407)
!2424 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2407)
!2425 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2407)
!2426 = !DILocation(line: 193, column: 2, scope: !2408, inlinedAt: !2416)
!2427 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 196, column: 17, scope: !2408, inlinedAt: !2416)
!2429 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2428)
!2430 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2428)
!2432 = !DILocation(line: 196, column: 20, scope: !2408, inlinedAt: !2416)
!2433 = !DILocation(line: 0, scope: !2408, inlinedAt: !2416)
!2434 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 199, column: 22, scope: !2408, inlinedAt: !2416)
!2436 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2435)
!2437 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2435)
!2439 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2438)
!2440 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2438)
!2441 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2438)
!2442 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2438)
!2444 = !DILocation(line: 0, scope: !1795, inlinedAt: !2435)
!2445 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2435)
!2446 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2435)
!2448 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2447)
!2449 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2447)
!2450 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2447)
!2452 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2435)
!2453 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2435)
!2454 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2435)
!2456 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2455)
!2457 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2455)
!2458 = !DILocalVariable(name: "wg", arg: 1, scope: !2459, file: !2, line: 169, type: !1910)
!2459 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !2460)
!2460 = !{!2458, !2461}
!2461 = !DILocalVariable(name: "val", scope: !2459, file: !2, line: 171, type: !43)
!2462 = !DILocation(line: 169, column: 22, scope: !2459, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 202, column: 21, scope: !2408, inlinedAt: !2416)
!2464 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 171, column: 19, scope: !2459, inlinedAt: !2463)
!2466 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2465)
!2467 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2465)
!2469 = !DILocation(line: 172, column: 10, scope: !2459, inlinedAt: !2463)
!2470 = !DILocation(line: 0, scope: !2459, inlinedAt: !2463)
!2471 = !DILocation(line: 175, column: 3, scope: !2459, inlinedAt: !2463)
!2472 = !DILocation(line: 175, column: 13, scope: !2459, inlinedAt: !2463)
!2473 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 175, column: 12, scope: !2459, inlinedAt: !2463)
!2475 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2474)
!2476 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2474)
!2477 = !DILocation(line: 172, column: 6, scope: !2459, inlinedAt: !2463)
!2478 = !DILocalVariable(name: "x", arg: 1, scope: !2479, file: !1747, line: 150, type: !1750)
!2479 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1747, file: !1747, line: 150, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !2480)
!2480 = !{!2478, !2481}
!2481 = !DILocalVariable(name: "val", arg: 2, scope: !2479, file: !1747, line: 150, type: !43)
!2482 = !DILocation(line: 150, column: 18, scope: !2479, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 206, column: 16, scope: !2408, inlinedAt: !2416)
!2484 = !DILocation(line: 150, column: 51, scope: !2479, inlinedAt: !2483)
!2485 = !DILocation(line: 150, column: 56, scope: !2479, inlinedAt: !2483)
!2486 = !DILocalVariable(name: "addr", arg: 1, scope: !2487, file: !1759, line: 205, type: !1762)
!2487 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1759, file: !1759, line: 205, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !2488)
!2488 = !{!2486, !2489}
!2489 = !DILocalVariable(name: "val", arg: 2, scope: !2487, file: !1759, line: 205, type: !43)
!2490 = !DILocation(line: 205, column: 6, scope: !2487, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 150, column: 49, scope: !2479, inlinedAt: !2483)
!2492 = !DILocation(line: 209, column: 33, scope: !2408, inlinedAt: !2416)
!2493 = !DILocation(line: 209, column: 3, scope: !2408, inlinedAt: !2416)
!2494 = !DILocation(line: 212, column: 12, scope: !2408, inlinedAt: !2416)
!2495 = !DILocation(line: 212, column: 7, scope: !2408, inlinedAt: !2416)
!2496 = !DILocation(line: 212, scope: !2408, inlinedAt: !2416)
!2497 = !DILocation(line: 212, column: 27, scope: !2408, inlinedAt: !2416)
!2498 = !DILocation(line: 213, column: 7, scope: !2408, inlinedAt: !2416)
!2499 = !DILocation(line: 213, column: 12, scope: !2408, inlinedAt: !2416)
!2500 = !DILocation(line: 213, column: 9, scope: !2408, inlinedAt: !2416)
!2501 = !DILocation(line: 214, column: 32, scope: !2408, inlinedAt: !2416)
!2502 = !DILocation(line: 214, column: 40, scope: !2408, inlinedAt: !2416)
!2503 = !DILocation(line: 214, column: 31, scope: !2408, inlinedAt: !2416)
!2504 = !DILocation(line: 212, column: 39, scope: !2408, inlinedAt: !2416)
!2505 = !DILocation(line: 212, column: 47, scope: !2408, inlinedAt: !2416)
!2506 = !DILocation(line: 212, column: 35, scope: !2408, inlinedAt: !2416)
!2507 = !DILocation(line: 212, column: 25, scope: !2408, inlinedAt: !2416)
!2508 = !DILocation(line: 169, column: 22, scope: !2459, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 219, column: 21, scope: !2408, inlinedAt: !2416)
!2510 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 171, column: 19, scope: !2459, inlinedAt: !2509)
!2512 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2511)
!2513 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2511)
!2515 = !DILocation(line: 172, column: 10, scope: !2459, inlinedAt: !2509)
!2516 = !DILocation(line: 0, scope: !2459, inlinedAt: !2509)
!2517 = !DILocation(line: 175, column: 3, scope: !2459, inlinedAt: !2509)
!2518 = !DILocation(line: 175, column: 13, scope: !2459, inlinedAt: !2509)
!2519 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 175, column: 12, scope: !2459, inlinedAt: !2509)
!2521 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2520)
!2522 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2520)
!2523 = !DILocation(line: 172, column: 6, scope: !2459, inlinedAt: !2509)
!2524 = !DILocation(line: 223, column: 11, scope: !2408, inlinedAt: !2416)
!2525 = !DILocation(line: 223, column: 6, scope: !2408, inlinedAt: !2416)
!2526 = !DILocation(line: 223, scope: !2408, inlinedAt: !2416)
!2527 = !DILocation(line: 223, column: 26, scope: !2408, inlinedAt: !2416)
!2528 = !DILocation(line: 224, column: 6, scope: !2408, inlinedAt: !2416)
!2529 = !DILocation(line: 224, column: 11, scope: !2408, inlinedAt: !2416)
!2530 = !DILocation(line: 224, column: 8, scope: !2408, inlinedAt: !2416)
!2531 = !DILocation(line: 225, column: 14, scope: !2408, inlinedAt: !2416)
!2532 = !DILocation(line: 225, column: 22, scope: !2408, inlinedAt: !2416)
!2533 = !DILocation(line: 225, column: 35, scope: !2408, inlinedAt: !2416)
!2534 = !DILocation(line: 225, column: 43, scope: !2408, inlinedAt: !2416)
!2535 = !DILocalVariable(name: "start", arg: 1, scope: !2536, file: !1534, line: 51, type: !21)
!2536 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1534, file: !1534, line: 51, type: !2537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!21, !21}
!2539 = !{!2535, !2540}
!2540 = !DILocalVariable(name: "end", arg: 2, scope: !2536, file: !1534, line: 51, type: !21)
!2541 = !DILocation(line: 51, column: 6, scope: !2536, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 225, column: 13, scope: !2408, inlinedAt: !2416)
!2543 = !DILocation(line: 52, column: 17, scope: !2536, inlinedAt: !2542)
!2544 = !DILocation(line: 52, column: 24, scope: !2536, inlinedAt: !2542)
!2545 = !DILocation(line: 52, column: 16, scope: !2536, inlinedAt: !2542)
!2546 = !DILocation(line: 223, column: 38, scope: !2408, inlinedAt: !2416)
!2547 = !DILocation(line: 223, column: 46, scope: !2408, inlinedAt: !2416)
!2548 = !DILocation(line: 223, column: 34, scope: !2408, inlinedAt: !2416)
!2549 = !DILocation(line: 223, column: 24, scope: !2408, inlinedAt: !2416)
!2550 = !DILocation(line: 230, column: 18, scope: !2408, inlinedAt: !2416)
!2551 = !DILocalVariable(name: "found", arg: 1, scope: !2552, file: !2553, line: 95, type: !346)
!2552 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2553, file: !2553, line: 95, type: !2554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2556)
!2553 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!346}
!2556 = !{!2551, !2557, !2558, !2559, !2572, !2573, !2574, !2581, !2582}
!2557 = !DILocalVariable(name: "headerPtr", scope: !2552, file: !2553, line: 103, type: !9)
!2558 = !DILocalVariable(name: "i", scope: !2552, file: !2553, line: 104, type: !2009)
!2559 = !DILocalVariable(name: "header", scope: !2552, file: !2553, line: 111, type: !2560)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64, align: 64, dwarfAddressSpace: 0)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2562)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2572 = !DILocalVariable(name: "start", scope: !2552, file: !2553, line: 113, type: !21)
!2573 = !DILocalVariable(name: "end", scope: !2552, file: !2553, line: 114, type: !21)
!2574 = !DILocalVariable(name: "header", scope: !2552, file: !2553, line: 118, type: !2575)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64, align: 64, dwarfAddressSpace: 0)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2577)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2578)
!2578 = !{!2564, !2566, !2567, !2568, !2569, !2570, !2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2581 = !DILocalVariable(name: "start", scope: !2552, file: !2553, line: 120, type: !21)
!2582 = !DILocalVariable(name: "end", scope: !2552, file: !2553, line: 121, type: !21)
!2583 = !DILocation(line: 95, column: 6, scope: !2552, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 16, column: 13, scope: !2585, inlinedAt: !2586)
!2585 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2418, file: !2418, line: 15, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2586 = distinct !DILocation(line: 233, column: 15, scope: !2408, inlinedAt: !2416)
!2587 = !DILocation(line: 103, column: 2, scope: !2552, inlinedAt: !2584)
!2588 = !DILocation(line: 104, column: 6, scope: !2552, inlinedAt: !2584)
!2589 = !DILocation(line: 104, column: 33, scope: !2552, inlinedAt: !2584)
!2590 = !DILocation(line: 104, column: 16, scope: !2552, inlinedAt: !2584)
!2591 = !DILocation(line: 0, scope: !2552, inlinedAt: !2584)
!2592 = !DILocation(line: 103, column: 80, scope: !2552, inlinedAt: !2584)
!2593 = !DILocation(line: 103, column: 67, scope: !2552, inlinedAt: !2584)
!2594 = !DILocation(line: 103, column: 29, scope: !2552, inlinedAt: !2584)
!2595 = !DILocation(line: 112, column: 14, scope: !2552, inlinedAt: !2584)
!2596 = !DILocation(line: 104, column: 14, scope: !2552, inlinedAt: !2584)
!2597 = !DILocation(line: 111, column: 36, scope: !2552, inlinedAt: !2584)
!2598 = !DILocation(line: 111, column: 4, scope: !2552, inlinedAt: !2584)
!2599 = !DILocation(line: 112, column: 7, scope: !2552, inlinedAt: !2584)
!2600 = !DILocation(line: 112, column: 20, scope: !2552, inlinedAt: !2584)
!2601 = !DILocation(line: 112, column: 34, scope: !2552, inlinedAt: !2584)
!2602 = !DILocation(line: 112, column: 41, scope: !2552, inlinedAt: !2584)
!2603 = !DILocation(line: 112, column: 46, scope: !2552, inlinedAt: !2584)
!2604 = !DILocation(line: 112, column: 52, scope: !2552, inlinedAt: !2584)
!2605 = !DILocation(line: 113, column: 14, scope: !2552, inlinedAt: !2584)
!2606 = !DILocation(line: 113, column: 21, scope: !2552, inlinedAt: !2584)
!2607 = !DILocation(line: 113, column: 5, scope: !2552, inlinedAt: !2584)
!2608 = !DILocation(line: 114, column: 12, scope: !2552, inlinedAt: !2584)
!2609 = !DILocation(line: 114, column: 20, scope: !2552, inlinedAt: !2584)
!2610 = !DILocation(line: 114, column: 5, scope: !2552, inlinedAt: !2584)
!2611 = !DILocation(line: 115, column: 5, scope: !2552, inlinedAt: !2584)
!2612 = !DILocation(line: 115, column: 11, scope: !2552, inlinedAt: !2584)
!2613 = !DILocation(line: 115, column: 18, scope: !2552, inlinedAt: !2584)
!2614 = !DILocation(line: 114, column: 27, scope: !2552, inlinedAt: !2584)
!2615 = !DILocation(line: 114, column: 18, scope: !2552, inlinedAt: !2584)
!2616 = !DILocation(line: 51, column: 6, scope: !2536, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 115, column: 10, scope: !2552, inlinedAt: !2584)
!2618 = !DILocation(line: 52, column: 17, scope: !2536, inlinedAt: !2617)
!2619 = !DILocation(line: 52, column: 24, scope: !2536, inlinedAt: !2617)
!2620 = !DILocation(line: 52, column: 16, scope: !2536, inlinedAt: !2617)
!2621 = !DILocation(line: 125, column: 26, scope: !2552, inlinedAt: !2584)
!2622 = !DILocation(line: 125, column: 48, scope: !2552, inlinedAt: !2584)
!2623 = !DILocation(line: 125, column: 25, scope: !2552, inlinedAt: !2584)
!2624 = !DILocation(line: 125, column: 3, scope: !2552, inlinedAt: !2584)
!2625 = !DILocation(line: 104, column: 41, scope: !2552, inlinedAt: !2584)
!2626 = !DILocation(line: 104, column: 21, scope: !2552, inlinedAt: !2584)
!2627 = !DILocation(line: 49, column: 2, scope: !2405)
!2628 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2418, file: !2418, line: 23, type: !2629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2630)
!2629 = !DISubroutineType(types: !2033)
!2630 = !{!2631}
!2631 = !DILocalVariable(name: "sp", arg: 1, scope: !2628, file: !2418, line: 23, type: !21)
!2632 = !DILocation(line: 23, column: 6, scope: !2628)
!2633 = !DILocation(line: 24, column: 12, scope: !2628)
!2634 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 290, column: 16, scope: !2636, inlinedAt: !2637)
!2636 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459)
!2637 = distinct !DILocation(line: 24, column: 29, scope: !2628)
!2638 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2635)
!2639 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2635)
!2640 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2635)
!2641 = !DILocation(line: 0, scope: !1890, inlinedAt: !2635)
!2642 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2635)
!2643 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2635)
!2644 = !DILocation(line: 290, column: 25, scope: !2636, inlinedAt: !2637)
!2645 = !DILocation(line: 51, column: 6, scope: !2536, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 24, column: 11, scope: !2628)
!2647 = !DILocation(line: 52, column: 17, scope: !2536, inlinedAt: !2646)
!2648 = !DILocation(line: 52, column: 24, scope: !2536, inlinedAt: !2646)
!2649 = !DILocation(line: 52, column: 16, scope: !2536, inlinedAt: !2646)
!2650 = !DILocation(line: 25, column: 2, scope: !2628)
!2651 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !128, file: !128, line: 80, type: !2652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!60, !131}
!2654 = !{!2655, !2656, !2657, !2658, !2659}
!2655 = !DILocalVariable(name: "argc", arg: 1, scope: !2651, file: !128, line: 80, type: !60)
!2656 = !DILocalVariable(name: "argv", arg: 2, scope: !2651, file: !128, line: 80, type: !131)
!2657 = !DILocalVariable(name: "main_argc", scope: !2651, file: !128, line: 105, type: !60)
!2658 = !DILocalVariable(name: "main_argv", scope: !2651, file: !128, line: 106, type: !131)
!2659 = !DILocalVariable(name: "stackTop", scope: !2651, file: !128, line: 75, type: !21)
!2660 = !DILocation(line: 80, column: 6, scope: !2651)
!2661 = !DILocation(line: 87, column: 14, scope: !2651)
!2662 = !DILocation(line: 87, column: 2, scope: !2651)
!2663 = !DILocation(line: 88, column: 14, scope: !2651)
!2664 = !DILocation(line: 88, column: 2, scope: !2651)
!2665 = !DILocation(line: 92, column: 31, scope: !2651)
!2666 = !DILocation(line: 58, column: 6, scope: !1902, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 27, column: 26, scope: !2668, inlinedAt: !2670)
!2668 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2669, file: !2669, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2669 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2670 = distinct !DILocation(line: 97, column: 35, scope: !2651)
!2671 = !DILocation(line: 27, column: 16, scope: !2668, inlinedAt: !2670)
!2672 = !DILocation(line: 97, column: 2, scope: !2651)
!2673 = !DILocation(line: 98, column: 9, scope: !2651)
!2674 = !DILocation(line: 101, column: 2, scope: !2651)
!2675 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !128, file: !128, line: 135, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2676 = !DILocation(line: 137, column: 22, scope: !2677, inlinedAt: !2681)
!2677 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2553, file: !2553, line: 137, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2678)
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "read", scope: !2677, file: !2553, line: 138, type: !43)
!2680 = !DILocalVariable(name: "n", scope: !2677, file: !2553, line: 137, type: !11)
!2681 = distinct !DILocation(line: 27, column: 22, scope: !2682, inlinedAt: !2687)
!2682 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1497, file: !1497, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "r", scope: !2682, file: !1497, line: 27, type: !11)
!2685 = !DILocalVariable(name: "xorshift64State", scope: !2682, file: !1497, line: 52, type: !11)
!2686 = !DILocalVariable(name: "xorshift32State", scope: !2682, file: !1497, line: 32, type: !43)
!2687 = distinct !DILocation(line: 24, column: 10, scope: !2688, inlinedAt: !2691)
!2688 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !142, file: !142, line: 23, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2689)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "stackTop", scope: !2688, file: !128, line: 75, type: !21)
!2691 = distinct !DILocation(line: 136, column: 5, scope: !2675)
!2692 = !DILocation(line: 138, column: 24, scope: !2677, inlinedAt: !2681)
!2693 = !DILocation(line: 138, column: 2, scope: !2677, inlinedAt: !2681)
!2694 = !DILocation(line: 139, column: 5, scope: !2677, inlinedAt: !2681)
!2695 = !DILocation(line: 139, column: 10, scope: !2677, inlinedAt: !2681)
!2696 = !DILocation(line: 0, scope: !2677, inlinedAt: !2681)
!2697 = !DILocation(line: 140, column: 3, scope: !2677, inlinedAt: !2681)
!2698 = !DILocation(line: 27, column: 2, scope: !2682, inlinedAt: !2687)
!2699 = !DILocation(line: 28, column: 27, scope: !2682, inlinedAt: !2687)
!2700 = !DILocation(line: 28, column: 2, scope: !2682, inlinedAt: !2687)
!2701 = !DILocation(line: 29, column: 27, scope: !2682, inlinedAt: !2687)
!2702 = !DILocation(line: 29, column: 2, scope: !2682, inlinedAt: !2687)
!2703 = !DILocation(line: 35, column: 12, scope: !2704, inlinedAt: !2705)
!2704 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1534, file: !1534, line: 34, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2705 = distinct !DILocation(line: 25, column: 10, scope: !2688, inlinedAt: !2691)
!2706 = !DILocation(line: 39, column: 8, scope: !2704, inlinedAt: !2705)
!2707 = !DILocation(line: 26, column: 12, scope: !2688, inlinedAt: !2691)
!2708 = !DILocalVariable(name: "sp", arg: 1, scope: !2709, file: !2, line: 55, type: !21)
!2709 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1459, retainedNodes: !2710)
!2710 = !{!2708, !2711}
!2711 = !DILocalVariable(name: "stackTop", scope: !2709, file: !2, line: 24, type: !21)
!2712 = !DILocation(line: 55, column: 6, scope: !2709, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 26, column: 11, scope: !2688, inlinedAt: !2691)
!2714 = !DILocation(line: 56, column: 28, scope: !2709, inlinedAt: !2713)
!2715 = !DILocation(line: 56, column: 17, scope: !2709, inlinedAt: !2713)
!2716 = !DILocation(line: 57, column: 18, scope: !2709, inlinedAt: !2713)
!2717 = !DILocation(line: 28, column: 10, scope: !2688, inlinedAt: !2691)
!2718 = !DILocation(line: 137, column: 2, scope: !2675)
!2719 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !128, file: !128, line: 148, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!60, !21}
!2722 = !{!2723, !2724}
!2723 = !DILocalVariable(name: "sig", arg: 1, scope: !2719, file: !128, line: 148, type: !60)
!2724 = !DILocalVariable(name: "addr", arg: 2, scope: !2719, file: !128, line: 148, type: !21)
!2725 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 158, column: 14, scope: !2719)
!2728 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 290, column: 9, scope: !2090, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 169, column: 10, scope: !2719)
!2731 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 90, column: 10, scope: !2733, inlinedAt: !2742)
!2733 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !2734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!11}
!2736 = !{!2737, !2738, !2739, !2740, !2741}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !1602, line: 76, type: !11)
!2738 = !DILocalVariable(name: "firstdigit", scope: !2733, file: !1602, line: 79, type: !2009)
!2739 = !DILocalVariable(name: "i", scope: !2733, file: !1602, line: 80, type: !2009)
!2740 = !DILocalVariable(name: "digit", scope: !2733, file: !1602, line: 81, type: !160)
!2741 = !DILocalVariable(name: "i", scope: !2733, file: !1602, line: 89, type: !2009)
!2742 = distinct !DILocation(line: 62, column: 13, scope: !2743, inlinedAt: !2748)
!2743 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!43}
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !1602, line: 61, type: !43)
!2748 = distinct !DILocation(line: 72, column: 13, scope: !2749, inlinedAt: !2752)
!2749 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !2750)
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !1602, line: 65, type: !60)
!2752 = distinct !DILocation(line: 169, column: 10, scope: !2719)
!2753 = !DILocation(line: 76, column: 6, scope: !2733, inlinedAt: !2742)
!2754 = !DILocation(line: 77, column: 2, scope: !2733, inlinedAt: !2742)
!2755 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 69, column: 10, scope: !2749, inlinedAt: !2752)
!2757 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 290, column: 9, scope: !2090, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 167, column: 10, scope: !2719)
!2760 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 167, column: 10, scope: !2719)
!2763 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 290, column: 9, scope: !2090, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 165, column: 10, scope: !2719)
!2766 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 165, column: 10, scope: !2719)
!2769 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 290, column: 9, scope: !2090, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 163, column: 10, scope: !2719)
!2772 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 163, column: 10, scope: !2719)
!2775 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 160, column: 13, scope: !2719)
!2778 = !DILocation(line: 215, column: 2, scope: !2011, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 14, column: 10, scope: !2005, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 155, column: 14, scope: !2719)
!2781 = !DILocation(line: 148, column: 6, scope: !2719)
!2782 = !DILocation(line: 154, column: 5, scope: !2719)
!2783 = !DILocation(line: 154, column: 10, scope: !2719)
!2784 = !DILocation(line: 0, scope: !2719)
!2785 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2780)
!2786 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2780)
!2787 = !DILocation(line: 14, column: 12, scope: !2005, inlinedAt: !2780)
!2788 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2779)
!2789 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2779)
!2790 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2779)
!2791 = !DILocation(line: 13, column: 26, scope: !2005, inlinedAt: !2780)
!2792 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2780)
!2793 = !DILocation(line: 13, column: 16, scope: !2005, inlinedAt: !2780)
!2794 = !DILocation(line: 0, scope: !2005, inlinedAt: !2780)
!2795 = !DILocation(line: 156, column: 12, scope: !2719)
!2796 = !DILocation(line: 156, column: 11, scope: !2719)
!2797 = !DILocation(line: 12, column: 6, scope: !2005, inlinedAt: !2777)
!2798 = !DILocation(line: 13, column: 6, scope: !2005, inlinedAt: !2777)
!2799 = !DILocation(line: 13, column: 22, scope: !2005, inlinedAt: !2777)
!2800 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2777)
!2801 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2777)
!2802 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2776)
!2803 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2776)
!2804 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2776)
!2805 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2777)
!2806 = !DILocation(line: 161, column: 9, scope: !2719)
!2807 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2810)
!2809 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !142, file: !142, line: 138, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2810 = distinct !DILocation(line: 163, column: 10, scope: !2719)
!2811 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2808)
!2812 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2808)
!2814 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2813)
!2815 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2813)
!2816 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2813)
!2817 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2813)
!2819 = !DILocation(line: 0, scope: !1795, inlinedAt: !2808)
!2820 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2808)
!2821 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2808)
!2823 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2822)
!2824 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2822)
!2825 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2822)
!2827 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2808)
!2828 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2808)
!2829 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2808)
!2831 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2830)
!2832 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2830)
!2833 = !DILocation(line: 12, column: 6, scope: !2005, inlinedAt: !2774)
!2834 = !DILocation(line: 13, column: 6, scope: !2005, inlinedAt: !2774)
!2835 = !DILocation(line: 13, column: 22, scope: !2005, inlinedAt: !2774)
!2836 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2774)
!2837 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2774)
!2838 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2773)
!2839 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2773)
!2840 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2773)
!2841 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2774)
!2842 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2770)
!2843 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2770)
!2844 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2770)
!2845 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 143, column: 18, scope: !2847, inlinedAt: !2848)
!2847 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !142, file: !142, line: 142, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493)
!2848 = distinct !DILocation(line: 163, column: 10, scope: !2719)
!2849 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2846)
!2851 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2850)
!2852 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2850)
!2854 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2846)
!2855 = !DILocation(line: 0, scope: !1735, inlinedAt: !2846)
!2856 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2846)
!2857 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2846)
!2858 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2846)
!2860 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2859)
!2861 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2859)
!2862 = !DILocation(line: 180, column: 8, scope: !2719)
!2863 = !DILocation(line: 180, column: 7, scope: !2719)
!2864 = !DILocation(line: 181, column: 2, scope: !2719)
!2865 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 165, column: 10, scope: !2719)
!2868 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2866)
!2869 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2866)
!2871 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2870)
!2872 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2870)
!2873 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2870)
!2874 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2870)
!2876 = !DILocation(line: 0, scope: !1795, inlinedAt: !2866)
!2877 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2866)
!2878 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2866)
!2880 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2879)
!2881 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2879)
!2882 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2879)
!2884 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2866)
!2885 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2866)
!2886 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2866)
!2888 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2887)
!2889 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2887)
!2890 = !DILocation(line: 12, column: 6, scope: !2005, inlinedAt: !2768)
!2891 = !DILocation(line: 13, column: 6, scope: !2005, inlinedAt: !2768)
!2892 = !DILocation(line: 13, column: 22, scope: !2005, inlinedAt: !2768)
!2893 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2768)
!2894 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2768)
!2895 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2767)
!2896 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2767)
!2897 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2767)
!2898 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2768)
!2899 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2764)
!2900 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2764)
!2901 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2764)
!2902 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 143, column: 18, scope: !2847, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 165, column: 10, scope: !2719)
!2905 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2903)
!2907 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2906)
!2908 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2906)
!2910 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2903)
!2911 = !DILocation(line: 0, scope: !1735, inlinedAt: !2903)
!2912 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2903)
!2913 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2903)
!2914 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2903)
!2916 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2915)
!2917 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2915)
!2918 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 167, column: 10, scope: !2719)
!2921 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2919)
!2922 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2919)
!2924 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2923)
!2925 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2923)
!2926 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2923)
!2927 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2923)
!2929 = !DILocation(line: 0, scope: !1795, inlinedAt: !2919)
!2930 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2919)
!2931 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2919)
!2933 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2932)
!2934 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2932)
!2935 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2932)
!2937 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2919)
!2938 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2919)
!2939 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2919)
!2941 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2940)
!2942 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2940)
!2943 = !DILocation(line: 12, column: 6, scope: !2005, inlinedAt: !2762)
!2944 = !DILocation(line: 13, column: 6, scope: !2005, inlinedAt: !2762)
!2945 = !DILocation(line: 13, column: 22, scope: !2005, inlinedAt: !2762)
!2946 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2762)
!2947 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2762)
!2948 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2761)
!2949 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2761)
!2950 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2761)
!2951 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2762)
!2952 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2758)
!2953 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2758)
!2954 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2758)
!2955 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 143, column: 18, scope: !2847, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 167, column: 10, scope: !2719)
!2958 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2956)
!2960 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2959)
!2961 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2959)
!2963 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2956)
!2964 = !DILocation(line: 0, scope: !1735, inlinedAt: !2956)
!2965 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2956)
!2966 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2956)
!2967 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2956)
!2969 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2968)
!2970 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2968)
!2971 = !DILocation(line: 169, column: 11, scope: !2719)
!2972 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 169, column: 10, scope: !2719)
!2975 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2973)
!2976 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2973)
!2978 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2977)
!2979 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2977)
!2980 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2977)
!2981 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2977)
!2983 = !DILocation(line: 0, scope: !1795, inlinedAt: !2973)
!2984 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2973)
!2985 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2973)
!2987 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2986)
!2988 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2986)
!2989 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2986)
!2991 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2973)
!2992 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2973)
!2993 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2973)
!2995 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2994)
!2996 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2994)
!2997 = !DILocation(line: 65, column: 6, scope: !2749, inlinedAt: !2752)
!2998 = !DILocation(line: 68, column: 5, scope: !2749, inlinedAt: !2752)
!2999 = !DILocation(line: 68, column: 7, scope: !2749, inlinedAt: !2752)
!3000 = !DILocation(line: 0, scope: !2749, inlinedAt: !2752)
!3001 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2756)
!3002 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2756)
!3003 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2756)
!3004 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2756)
!3005 = !DILocation(line: 70, column: 8, scope: !2749, inlinedAt: !2752)
!3006 = !DILocation(line: 70, column: 7, scope: !2749, inlinedAt: !2752)
!3007 = !DILocation(line: 70, column: 3, scope: !2749, inlinedAt: !2752)
!3008 = !DILocation(line: 65, column: 17, scope: !2749, inlinedAt: !2752)
!3009 = !DILocation(line: 72, column: 21, scope: !2749, inlinedAt: !2752)
!3010 = !DILocation(line: 61, column: 6, scope: !2743, inlinedAt: !2748)
!3011 = !DILocation(line: 62, column: 21, scope: !2743, inlinedAt: !2748)
!3012 = !DILocation(line: 62, column: 20, scope: !2743, inlinedAt: !2748)
!3013 = !DILocation(line: 79, column: 2, scope: !2733, inlinedAt: !2742)
!3014 = !DILocation(line: 80, column: 6, scope: !2733, inlinedAt: !2742)
!3015 = !DILocation(line: 0, scope: !2733, inlinedAt: !2742)
!3016 = !DILocation(line: 89, column: 23, scope: !2733, inlinedAt: !2742)
!3017 = !DILocation(line: 89, column: 25, scope: !2733, inlinedAt: !2742)
!3018 = !DILocation(line: 80, column: 15, scope: !2733, inlinedAt: !2742)
!3019 = !DILocation(line: 81, column: 17, scope: !2733, inlinedAt: !2742)
!3020 = !DILocation(line: 81, column: 18, scope: !2733, inlinedAt: !2742)
!3021 = !DILocation(line: 81, column: 16, scope: !2733, inlinedAt: !2742)
!3022 = !DILocation(line: 82, column: 15, scope: !2733, inlinedAt: !2742)
!3023 = !DILocation(line: 82, column: 9, scope: !2733, inlinedAt: !2742)
!3024 = !DILocation(line: 83, column: 12, scope: !2733, inlinedAt: !2742)
!3025 = !DILocation(line: 86, column: 3, scope: !2733, inlinedAt: !2742)
!3026 = !DILocation(line: 80, column: 23, scope: !2733, inlinedAt: !2742)
!3027 = !DILocation(line: 80, column: 17, scope: !2733, inlinedAt: !2742)
!3028 = !DILocation(line: 90, column: 18, scope: !2733, inlinedAt: !2742)
!3029 = !DILocation(line: 90, column: 17, scope: !2733, inlinedAt: !2742)
!3030 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2732)
!3031 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2732)
!3032 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2732)
!3033 = !DILocation(line: 89, column: 31, scope: !2733, inlinedAt: !2742)
!3034 = !DILocation(line: 92, column: 2, scope: !2733, inlinedAt: !2742)
!3035 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2729)
!3036 = !DILocation(line: 214, column: 6, scope: !2011, inlinedAt: !2729)
!3037 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2729)
!3038 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2729)
!3039 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 143, column: 18, scope: !2847, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 169, column: 10, scope: !2719)
!3042 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3040)
!3043 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3040)
!3045 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3044)
!3046 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3044)
!3047 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3044)
!3049 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !3040)
!3050 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3040)
!3051 = !DILocation(line: 0, scope: !1735, inlinedAt: !3040)
!3052 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3040)
!3053 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3040)
!3054 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3040)
!3056 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3055)
!3057 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3055)
!3058 = !DILocation(line: 14, column: 13, scope: !2005, inlinedAt: !2727)
!3059 = !DILocation(line: 14, column: 11, scope: !2005, inlinedAt: !2727)
!3060 = !DILocation(line: 14, column: 12, scope: !2005, inlinedAt: !2727)
!3061 = !DILocation(line: 215, column: 17, scope: !2011, inlinedAt: !2726)
!3062 = !DILocation(line: 216, column: 12, scope: !2011, inlinedAt: !2726)
!3063 = !DILocation(line: 217, column: 2, scope: !2011, inlinedAt: !2726)
!3064 = !DILocation(line: 13, column: 26, scope: !2005, inlinedAt: !2727)
!3065 = !DILocation(line: 13, column: 14, scope: !2005, inlinedAt: !2727)
!3066 = !DILocation(line: 13, column: 16, scope: !2005, inlinedAt: !2727)
!3067 = !DILocation(line: 0, scope: !2005, inlinedAt: !2727)
!3068 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !128, file: !128, line: 420, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1493, retainedNodes: !3069)
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DILocalVariable(name: "s", arg: 1, scope: !3068, file: !128, line: 420, type: !60)
!3071 = !DILocalVariable(name: "mask", scope: !3068, file: !128, line: 427, type: !43)
!3072 = !DILocalVariable(name: "val", scope: !3068, file: !128, line: 428, type: !43)
!3073 = !DILocalVariable(name: "swapped", scope: !3068, file: !128, line: 429, type: !47)
!3074 = !DILocation(line: 420, column: 6, scope: !3068)
!3075 = !DILocation(line: 0, scope: !3068)
!3076 = !DILocation(line: 427, column: 31, scope: !3068)
!3077 = !DILocation(line: 427, column: 3, scope: !3068)
!3078 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 428, column: 30, scope: !3068)
!3080 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !3079)
!3081 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !3079)
!3083 = !DILocation(line: 428, column: 3, scope: !3068)
!3084 = !DILocation(line: 429, column: 45, scope: !3068)
!3085 = !DILocation(line: 429, column: 50, scope: !3068)
!3086 = !DILocation(line: 429, column: 54, scope: !3068)
!3087 = !DILocation(line: 429, column: 53, scope: !3068)
!3088 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 429, column: 44, scope: !3068)
!3090 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3089)
!3091 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3089)
!3092 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3089)
!3093 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3089)
!3095 = !DILocation(line: 429, column: 3, scope: !3068)
!3096 = !DILocation(line: 430, column: 6, scope: !3068)
!3097 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 437, column: 21, scope: !3068)
!3099 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3098)
!3100 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3098)
!3101 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3098)
!3103 = !DILocation(line: 437, column: 25, scope: !3068)
!3104 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 441, column: 22, scope: !3068)
!3106 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !3105)
!3107 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !3105)
!3108 = !DILocation(line: 443, column: 2, scope: !3068)
!3109 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3110, file: !3110, line: 11, type: !3111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3117)
!3110 = !DIFile(filename: "TEMPLE_OFFERINGS_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/TEMPLE_OFFERINGS")
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!2009, !3113}
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !3114)
!3114 = !{!3115, !364, !369}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3116, size: 64, align: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64, align: 64, dwarfAddressSpace: 0)
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3109, file: !3110, line: 11, type: !2009)
!3119 = !DILocalVariable(name: "templeHeight", arg: 2, scope: !3109, file: !3110, line: 11, type: !3113)
!3120 = !DILocalVariable(name: "sum", scope: !3109, file: !3110, line: 12, type: !2009)
!3121 = !DILocalVariable(name: "i", scope: !3109, file: !3110, line: 13, type: !2009)
!3122 = !DILocalVariable(name: "left", scope: !3109, file: !3110, line: 15, type: !2009)
!3123 = !DILocalVariable(name: "right", scope: !3109, file: !3110, line: 16, type: !2009)
!3124 = !DILocalVariable(name: "j", scope: !3109, file: !3110, line: 18, type: !2009)
!3125 = !DILocalVariable(name: "j", scope: !3109, file: !3110, line: 25, type: !2009)
!3126 = !DILocation(line: 11, column: 6, scope: !3109)
!3127 = !DILocation(line: 12, column: 6, scope: !3109)
!3128 = !DILocation(line: 13, column: 6, scope: !3109)
!3129 = !DILocation(line: 13, column: 21, scope: !3109)
!3130 = !DILocation(line: 0, scope: !3109)
!3131 = !DILocation(line: 13, column: 19, scope: !3109)
!3132 = !DILocation(line: 18, column: 26, scope: !3109)
!3133 = !DILocation(line: 19, column: 19, scope: !3109)
!3134 = !DILocation(line: 18, scope: !3109)
!3135 = !DILocation(line: 19, column: 7, scope: !3109)
!3136 = !DILocation(line: 19, column: 20, scope: !3109)
!3137 = !DILocation(line: 19, column: 25, scope: !3109)
!3138 = !DILocation(line: 19, column: 38, scope: !3109)
!3139 = !DILocation(line: 19, column: 37, scope: !3109)
!3140 = !DILocation(line: 19, column: 23, scope: !3109)
!3141 = !DILocation(line: 20, column: 5, scope: !3109)
!3142 = !DILocation(line: 18, column: 32, scope: !3109)
!3143 = !DILocation(line: 18, column: 24, scope: !3109)
!3144 = !DILocation(line: 15, column: 4, scope: !3109)
!3145 = !DILocation(line: 25, column: 16, scope: !3109)
!3146 = !DILocation(line: 25, column: 7, scope: !3109)
!3147 = !DILocation(line: 25, scope: !3109)
!3148 = !DILocation(line: 25, column: 26, scope: !3109)
!3149 = !DILocation(line: 26, column: 7, scope: !3109)
!3150 = !DILocation(line: 26, column: 20, scope: !3109)
!3151 = !DILocation(line: 26, column: 19, scope: !3109)
!3152 = !DILocation(line: 26, column: 25, scope: !3109)
!3153 = !DILocation(line: 26, column: 38, scope: !3109)
!3154 = !DILocation(line: 26, column: 37, scope: !3109)
!3155 = !DILocation(line: 26, column: 23, scope: !3109)
!3156 = !DILocation(line: 27, column: 5, scope: !3109)
!3157 = !DILocation(line: 25, column: 31, scope: !3109)
!3158 = !DILocation(line: 25, column: 24, scope: !3109)
!3159 = !DILocation(line: 25, column: 28, scope: !3109)
!3160 = !DILocation(line: 16, column: 4, scope: !3109)
!3161 = !DILocation(line: 32, column: 14, scope: !3109)
!3162 = !DILocation(line: 32, column: 21, scope: !3109)
!3163 = !DILocalVariable(name: "x", arg: 1, scope: !3164, file: !3110, line: 3, type: !2009)
!3164 = distinct !DISubprogram(name: "main.max", linkageName: "main.max", scope: !3110, file: !3110, line: 3, type: !3165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!2009, !2009}
!3167 = !{!3163, !3168}
!3168 = !DILocalVariable(name: "y", arg: 2, scope: !3164, file: !3110, line: 3, type: !2009)
!3169 = !DILocation(line: 4, column: 5, scope: !3164, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 32, column: 13, scope: !3109)
!3171 = !DILocation(line: 4, column: 9, scope: !3164, inlinedAt: !3170)
!3172 = !DILocation(line: 0, scope: !3164, inlinedAt: !3170)
!3173 = !DILocation(line: 32, column: 27, scope: !3109)
!3174 = !DILocation(line: 32, column: 3, scope: !3109)
!3175 = !DILocation(line: 13, column: 26, scope: !3109)
!3176 = !DILocation(line: 13, column: 23, scope: !3109)
!3177 = !DILocation(line: 34, column: 9, scope: !3109)
!3178 = !DILocation(line: 34, column: 2, scope: !3109)
