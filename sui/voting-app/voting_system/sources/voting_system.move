module voting_system::Dashboard {
use std::string::String;

    public struct Proposal {
        id : UID,
        title : String,
        description : String,
        voted_yes_count : u64,
        voted_no_count : u64,
        expiration : u64, 
        creator : address,
        voter_registry : vector<address>,
    }


    public fn create_proposal(title : String, description : String, expiration : u64, ctx : TxnContext) {
            let proposal = Proposal {
                id : object::new(ctx),
                title : title,
                description : description,
                voted_yes_count : 0,
                voted_no_count : 0,
                expiration : expiration,
                creator : ctx.sender(),
                voter_registry : vector::empty(),
            };
        }


    )


}