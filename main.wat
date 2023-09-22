(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 0)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;1;) (type 1)))
  (func (;2;) (type 2)
    call 3
    i32.const 0
    call 0
    unreachable)
  (func (;3;) (type 2)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1048595
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.store8 offset=1048595
    end
    local.get 0
    i32.const 2
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048582
      i32.const 7
      call 4
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const 2
      i32.store offset=24
      local.get 0
      i32.const 24
      i32.add
      i32.const 1048576
      i32.const 5
      call 4
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const 2
      i32.store offset=16
      local.get 0
      i32.const 16
      i32.add
      i32.const 1048592
      i32.const 2
      call 4
      drop
    end
    i32.const 0
    i32.const 0
    i32.store8 offset=1048595
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;4;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.set 6
        local.get 3
        local.get 2
        local.get 5
        i32.sub
        i32.store offset=4
        local.get 3
        local.get 1
        local.get 5
        i32.add
        i32.store
        block  ;; label = @3
          local.get 6
          local.get 3
          i32.const 1
          local.get 3
          i32.const 12
          i32.add
          call 1
          i32.const 65535
          i32.and
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const -19
                    i32.add
                    br_table 3 (;@5;) 1 (;@7;) 1 (;@7;) 4 (;@4;) 0 (;@8;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.const -63
                        i32.add
                        br_table 2 (;@8;) 1 (;@9;) 0 (;@10;)
                      end
                      local.get 6
                      i32.const 8
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 6
                      i32.const 76
                      i32.eq
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 6
                        i32.const 51
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 29
                        i32.ne
                        br_if 3 (;@7;)
                        i32.const 3
                        local.set 4
                        br 9 (;@1;)
                      end
                      i32.const 4
                      local.set 4
                      br 8 (;@1;)
                    end
                    i32.const 8
                    local.set 4
                    br 7 (;@1;)
                  end
                  i32.const 7
                  local.set 4
                  br 6 (;@1;)
                end
                i32.const 15
                local.set 4
                br 5 (;@1;)
              end
              i32.const 11
              local.set 4
              br 4 (;@1;)
            end
            i32.const 1
            local.set 4
            br 3 (;@1;)
          end
          i32.const 2
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        i32.load offset=12
        local.get 5
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "_start" (func 2))
  (data (;0;) (i32.const 1048576) "World\00Hello, {s}!\0a\00"))
